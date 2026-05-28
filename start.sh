#!/bin/bash

MYSQL_DATA_DIR="$HOME/mysql_data"
MYSQL_SOCKET="/tmp/mysql.sock"
MYSQL_PORT=3306

if [ ! -d "$MYSQL_DATA_DIR" ]; then
    echo "Initializing MySQL data directory..."
    mysqld --initialize-insecure --datadir="$MYSQL_DATA_DIR" 2>&1
fi

echo "Starting MySQL..."
mysqld --datadir="$MYSQL_DATA_DIR" --socket="$MYSQL_SOCKET" --port="$MYSQL_PORT" \
    --pid-file=/tmp/mysql.pid --log-error=/tmp/mysql-error.log \
    --default-authentication-plugin=mysql_native_password &

echo "Waiting for MySQL to be ready..."
for i in $(seq 1 30); do
    if mysqladmin ping --socket="$MYSQL_SOCKET" -u root --silent 2>/dev/null; then
        echo "MySQL is ready."
        break
    fi
    echo "  waiting... ($i/30)"
    sleep 1
done

echo "Ensuring database and user exist..."
mysql --socket="$MYSQL_SOCKET" -u root 2>/dev/null << 'SQLEOF'
CREATE DATABASE IF NOT EXISTS dreamludo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'dreamludo'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dreamludo123';
ALTER USER 'dreamludo'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dreamludo123';
GRANT ALL PRIVILEGES ON dreamludo.* TO 'dreamludo'@'localhost';
FLUSH PRIVILEGES;
SQLEOF

echo "Running schema if needed..."
mysql --socket="$MYSQL_SOCKET" -u dreamludo -pdreamludo123 dreamludo < schema.sql 2>/dev/null || true

mkdir -p upload/proof

echo "Starting PHP server on port 5000..."
php -S 0.0.0.0:5000 router.php
