#!/usr/bin/env bash
# ================================================================
#  Dream Ludo — Ubuntu 22.04 Server Setup Script
#
#  USAGE:
#    1. Upload your project files to the server
#    2. Copy the env file:  cp example.env .env
#    3. Edit .env with your real values
#    4. Run:  sudo bash setup-ubuntu.sh
#
#  What this script does:
#    - Installs Apache2, PHP 8.2, MySQL 8.0
#    - Creates the database and user from .env
#    - Imports the full schema (dreamludo_full.sql)
#    - Configures an Apache virtual host
#    - Generates include/config.php from .env
#    - Optionally obtains a Let's Encrypt SSL certificate
#    - Sets correct file permissions
#    - Enables mod_rewrite and .htaccess support
# ================================================================

set -euo pipefail

# ── Colour helpers ────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; NC='\033[0m'
info()    { echo -e "${CYAN}[INFO]${NC}  $*"; }
success() { echo -e "${GREEN}[OK]${NC}    $*"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $*"; }
error()   { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }

# ── Must run as root ──────────────────────────────────────────────
[[ $EUID -ne 0 ]] && error "Run this script with sudo: sudo bash setup-ubuntu.sh"

# ── Load .env ─────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"

[[ ! -f "$ENV_FILE" ]] && error ".env not found. Copy example.env to .env and fill it in first."

info "Loading configuration from .env …"
# Export only KEY=value lines, ignoring comments and blank lines
set -a
# shellcheck disable=SC1090
source <(grep -v '^\s*#' "$ENV_FILE" | grep -v '^\s*$')
set +a

# ── Validate required variables ───────────────────────────────────
for var in DOMAIN APP_ROOT DB_NAME DB_USER DB_PASS PHP_VERSION; do
    [[ -z "${!var:-}" ]] && error "Variable $var is not set in .env"
done

PHP_VERSION="${PHP_VERSION:-8.2}"
APP_ROOT="${APP_ROOT:-/var/www/dreamludo}"
ENABLE_SSL="${ENABLE_SSL:-0}"
CERTBOT_EMAIL="${CERTBOT_EMAIL:-}"

echo ""
echo -e "${BOLD}================================================================${NC}"
echo -e "${BOLD}  Dream Ludo — Server Setup${NC}"
echo -e "  Domain  : ${CYAN}${DOMAIN}${NC}"
echo -e "  App root: ${CYAN}${APP_ROOT}${NC}"
echo -e "  PHP     : ${CYAN}${PHP_VERSION}${NC}"
echo -e "  SSL     : ${CYAN}${ENABLE_SSL}${NC}"
echo -e "${BOLD}================================================================${NC}"
echo ""

# ── 1. System update ─────────────────────────────────────────────
info "Updating system packages …"
apt-get update -qq
apt-get upgrade -y -qq
success "System updated."

# ── 2. Install Apache2 ───────────────────────────────────────────
info "Installing Apache2 …"
apt-get install -y -qq apache2
a2enmod rewrite headers ssl
systemctl enable apache2
success "Apache2 installed."

# ── 3. Install PHP ───────────────────────────────────────────────
info "Installing PHP ${PHP_VERSION} …"
apt-get install -y -qq software-properties-common
add-apt-repository -y ppa:ondrej/php 2>/dev/null
apt-get update -qq
apt-get install -y -qq \
    "php${PHP_VERSION}" \
    "php${PHP_VERSION}-fpm" \
    "php${PHP_VERSION}-mysql" \
    "php${PHP_VERSION}-curl" \
    "php${PHP_VERSION}-gd" \
    "php${PHP_VERSION}-mbstring" \
    "php${PHP_VERSION}-xml" \
    "php${PHP_VERSION}-zip" \
    "php${PHP_VERSION}-intl" \
    "php${PHP_VERSION}-bcmath" \
    "php${PHP_VERSION}-opcache"

# Enable PHP-FPM for Apache
a2enmod "proxy_fcgi" setenvif 2>/dev/null || true
a2enconf "php${PHP_VERSION}-fpm" 2>/dev/null || true
systemctl enable "php${PHP_VERSION}-fpm"
systemctl start  "php${PHP_VERSION}-fpm"

# Tune PHP for production
PHP_INI="/etc/php/${PHP_VERSION}/fpm/php.ini"
if [[ -f "$PHP_INI" ]]; then
    sed -i 's/^upload_max_filesize.*/upload_max_filesize = 32M/'   "$PHP_INI"
    sed -i 's/^post_max_size.*/post_max_size = 32M/'               "$PHP_INI"
    sed -i 's/^max_execution_time.*/max_execution_time = 120/'     "$PHP_INI"
    sed -i 's/^memory_limit.*/memory_limit = 256M/'                "$PHP_INI"
    sed -i 's/^;date.timezone.*/date.timezone = Asia\/Kolkata/'    "$PHP_INI"
    sed -i 's/^display_errors.*/display_errors = Off/'             "$PHP_INI"
    sed -i 's/^log_errors.*/log_errors = On/'                      "$PHP_INI"
fi
systemctl restart "php${PHP_VERSION}-fpm"
success "PHP ${PHP_VERSION} installed and configured."

# ── 4. Install MySQL 8.0 ─────────────────────────────────────────
info "Installing MySQL 8.0 …"
DEBIAN_FRONTEND=noninteractive apt-get install -y -qq \
    mysql-server mysql-client
systemctl enable mysql
systemctl start  mysql
success "MySQL installed."

# ── 5. Create database and user ──────────────────────────────────
info "Setting up database '${DB_NAME}' with user '${DB_USER}' …"
mysql -u root << MYSQL_SETUP
CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost'
  IDENTIFIED WITH mysql_native_password BY '${DB_PASS}';

ALTER USER '${DB_USER}'@'localhost'
  IDENTIFIED WITH mysql_native_password BY '${DB_PASS}';

GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SETUP
success "Database and user created."

# ── 6. Import schema ─────────────────────────────────────────────
SQL_FILE="$SCRIPT_DIR/dreamludo_full.sql"
if [[ -f "$SQL_FILE" ]]; then
    info "Importing schema from dreamludo_full.sql …"
    mysql -u "${DB_USER}" -p"${DB_PASS}" "${DB_NAME}" < "$SQL_FILE"
    success "Schema imported."
else
    warn "dreamludo_full.sql not found — skipping import. Import it manually."
fi

# ── 7. Deploy application files ──────────────────────────────────
info "Deploying files to ${APP_ROOT} …"
mkdir -p "${APP_ROOT}"
if [[ "$SCRIPT_DIR" != "$APP_ROOT" ]]; then
    rsync -a --exclude='.git' --exclude='node_modules' \
          --exclude='setup-ubuntu.sh' \
          "${SCRIPT_DIR}/" "${APP_ROOT}/"
    success "Files copied."
else
    success "Files already at ${APP_ROOT}."
fi

# ── 8. Generate include/config.php from .env ─────────────────────
info "Writing include/config.php …"
mkdir -p "${APP_ROOT}/include"
cat > "${APP_ROOT}/include/config.php" << PHPCONF
<?php
// Auto-generated by setup-ubuntu.sh — do not edit manually.
// Edit .env and re-run the setup script to regenerate.

\$servername = "${DB_HOST:-localhost}";
\$username   = "${DB_USER}";
\$password   = "${DB_PASS}";
\$db         = "${DB_NAME}";

\$conn = new mysqli();
\$conn->real_connect(\$servername, \$username, \$password, \$db, ${DB_PORT:-3306}, '${DB_SOCKET:-/var/run/mysqld/mysqld.sock}');
if (\$conn->connect_error) {
    die("Connection failed: " . \$conn->connect_error);
}
\$conn->set_charset('utf8mb4');
\$GLOBALS['config'] = \$conn;

\$ENABLE_RTL_MODE = 'false';

date_default_timezone_set('${TIMEZONE:-Asia/Kolkata}');

\$pur_code    = "${PURCHASE_KEY:-1234567890}";
\$app_name    = "${APP_NAME:-Dream Ludo}";
\$app_url     = "${APP_URL:-}";

// Email
\$mail_host     = "${MAIL_HOST:-}";
\$mail_port     = "${MAIL_PORT:-587}";
\$mail_username = "${MAIL_USERNAME:-}";
\$mail_password = "${MAIL_PASSWORD:-}";

// Firebase / FCM
\$apiKey              = "${FIREBASE_API_KEY:-}";
\$authDomain          = "${FIREBASE_AUTH_DOMAIN:-}";
\$databaseURL         = "${FIREBASE_DATABASE_URL:-}";
\$projectId           = "${FIREBASE_PROJECT_ID:-}";
\$storageBucket       = "${FIREBASE_STORAGE_BUCKET:-}";
\$messagingSenderId   = "${FIREBASE_MESSAGING_SENDER_ID:-}";
\$appId               = "${FIREBASE_APP_ID:-}";
\$measurementId       = "${FIREBASE_MEASUREMENT_ID:-}";
\$authorizationKey    = "${FCM_SERVER_KEY:-}";

// PayTM
\$paytm_mid   = "${PAYTM_MERCHANT_ID:-}";
\$paytm_key   = "${PAYTM_MERCHANT_KEY:-}";

// PayU
\$payu_id   = "${PAYU_ID:-}";
\$payu_key  = "${PAYU_KEY:-}";
\$payu_salt = "${PAYU_SALT:-}";

\$appicon = \$_SERVER['SERVER_NAME'] . "/admin/media/app-icon.png";
?>
PHPCONF
success "config.php written."

# ── 9. Set file permissions ───────────────────────────────────────
info "Setting file permissions …"
chown -R www-data:www-data "${APP_ROOT}"
find "${APP_ROOT}" -type d -exec chmod 755 {} \;
find "${APP_ROOT}" -type f -exec chmod 644 {} \;
chmod 755 "${APP_ROOT}/upload" 2>/dev/null || mkdir -p "${APP_ROOT}/upload/proof" && chmod -R 755 "${APP_ROOT}/upload"
chmod 600 "${APP_ROOT}/include/config.php"
chmod 600 "${ENV_FILE}" 2>/dev/null || true
success "Permissions set."

# ── 10. Configure Apache virtual host ────────────────────────────
info "Configuring Apache virtual host for ${DOMAIN} …"
VHOST_FILE="/etc/apache2/sites-available/dreamludo.conf"
cat > "$VHOST_FILE" << VHOST
<VirtualHost *:80>
    ServerName ${DOMAIN}
    ServerAlias www.${DOMAIN}
    DocumentRoot ${APP_ROOT}

    DirectoryIndex index.php index.html

    <Directory ${APP_ROOT}>
        AllowOverride All
        Require all granted
        Options -Indexes +FollowSymLinks
    </Directory>

    # PHP-FPM
    <FilesMatch \.php$>
        SetHandler "proxy:unix:/run/php/php${PHP_VERSION}-fpm.sock|fcgi://localhost"
    </FilesMatch>

    # Security headers
    Header always set X-Content-Type-Options "nosniff"
    Header always set X-Frame-Options "SAMEORIGIN"
    Header always set X-XSS-Protection "1; mode=block"
    Header always set Referrer-Policy "strict-origin-when-cross-origin"

    # Hide PHP version
    Header unset X-Powered-By

    # Logs
    ErrorLog  \${APACHE_LOG_DIR}/dreamludo_error.log
    CustomLog \${APACHE_LOG_DIR}/dreamludo_access.log combined
</VirtualHost>
VHOST

a2dissite 000-default.conf 2>/dev/null || true
a2ensite dreamludo.conf
apachectl configtest && systemctl reload apache2
success "Apache virtual host configured."

# ── 11. Create .htaccess if missing ──────────────────────────────
HTACCESS="${APP_ROOT}/.htaccess"
if [[ ! -f "$HTACCESS" ]]; then
    info "Creating .htaccess …"
    cat > "$HTACCESS" << 'HTACCESS_CONTENT'
Options -Indexes
Options +FollowSymLinks

# Deny access to sensitive files
<FilesMatch "(\.env|config\.php|\.sql|\.sh|composer\.(json|lock))$">
    Require all denied
</FilesMatch>

# PHP routing
DirectoryIndex index.php

RewriteEngine On

# Force HTTPS (uncomment after SSL is set up)
# RewriteCond %{HTTPS} off
# RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

# API routing
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^api/(.*)$ api/api.php?x=$1 [QSA,L]

# Admin routing
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_URI} ^/admin/(.+)$
RewriteRule ^admin/([^.]+)$ admin/$1.php [QSA,L]
HTACCESS_CONTENT
    chown www-data:www-data "$HTACCESS"
    success ".htaccess created."
fi

# ── 12. SSL with Let's Encrypt ────────────────────────────────────
if [[ "$ENABLE_SSL" == "1" ]]; then
    if [[ -z "$CERTBOT_EMAIL" ]]; then
        warn "CERTBOT_EMAIL is not set — skipping SSL. Set it in .env and re-run."
    else
        info "Installing Certbot and obtaining SSL certificate …"
        apt-get install -y -qq certbot python3-certbot-apache
        certbot --apache \
            --non-interactive \
            --agree-tos \
            --email "$CERTBOT_EMAIL" \
            -d "$DOMAIN" \
            -d "www.${DOMAIN}" || warn "SSL cert failed — check DNS points to this server first."

        # Auto-renew cron (certbot installs its own timer, but add as backup)
        CRON_LINE="0 3 * * * certbot renew --quiet --post-hook 'systemctl reload apache2'"
        (crontab -l 2>/dev/null | grep -qF 'certbot renew') || \
            (crontab -l 2>/dev/null; echo "$CRON_LINE") | crontab -
        success "SSL configured."
    fi
else
    info "SSL skipped (ENABLE_SSL=0). Set ENABLE_SSL=1 in .env and re-run to enable."
fi

# ── 13. MySQL auto-start tuning ───────────────────────────────────
info "Configuring MySQL …"
cat > /etc/mysql/conf.d/dreamludo.cnf << MYCNF
[mysqld]
character-set-server  = utf8mb4
collation-server      = utf8mb4_unicode_ci
max_connections       = 150
innodb_buffer_pool_size = 256M
slow_query_log        = 1
slow_query_log_file   = /var/log/mysql/slow.log
long_query_time       = 2
MYCNF
systemctl restart mysql
success "MySQL tuned."

# ── 14. Firewall ──────────────────────────────────────────────────
if command -v ufw &>/dev/null; then
    info "Configuring UFW firewall …"
    ufw allow OpenSSH
    ufw allow 'Apache Full'
    ufw --force enable
    success "Firewall configured."
fi

# ── 15. Log rotation ──────────────────────────────────────────────
cat > /etc/logrotate.d/dreamludo << LOGROTATE
${APP_ROOT}/upload/proof/*.log {
    weekly
    missingok
    rotate 8
    compress
    notifempty
}
LOGROTATE

# ── Done ──────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}${GREEN}================================================================${NC}"
echo -e "${BOLD}${GREEN}  Setup Complete!${NC}"
echo -e "${GREEN}================================================================${NC}"
echo ""
echo -e "  Site URL   : ${CYAN}http://${DOMAIN}${NC}"
echo -e "  Admin panel: ${CYAN}http://${DOMAIN}/admin${NC}"
echo -e "  Admin login: ${CYAN}admin / admin123${NC}  ← change this now!"
echo ""
echo -e "  ${YELLOW}Next steps:${NC}"
echo -e "  1. Open ${CYAN}http://${DOMAIN}/admin${NC} and change the admin password"
echo -e "  2. Go to ${CYAN}App Configuration${NC} and set your app name, FCM key, payment keys"
echo -e "  3. Go to ${CYAN}Crypto Wallet → Coin Types${NC} and set your Solana RPC + admin wallet"
if [[ "$ENABLE_SSL" == "1" ]]; then
echo -e "  4. SSL is active — all traffic is HTTPS"
else
echo -e "  4. Enable SSL: set ENABLE_SSL=1 in .env and re-run this script"
fi
echo ""
echo -e "${BOLD}================================================================${NC}"
