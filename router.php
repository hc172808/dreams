<?php
$uri = urldecode(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));

if ($uri !== '/' && file_exists(__DIR__ . $uri) && !is_dir(__DIR__ . $uri)) {
    return false;
}

$tryPhp = __DIR__ . rtrim($uri, '/') . '.php';
$tryHtml = __DIR__ . rtrim($uri, '/') . '.html';

if ($uri !== '/' && file_exists($tryPhp)) {
    chdir(dirname($tryPhp));
    require $tryPhp;
    exit;
}

if ($uri !== '/' && file_exists($tryHtml)) {
    chdir(dirname($tryHtml));
    require $tryHtml;
    exit;
}

chdir(__DIR__);
require __DIR__ . '/index.php';
