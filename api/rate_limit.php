<?php

function checkRateLimit($key, $maxRequests = 10, $windowSeconds = 60) {
    $cacheDir = sys_get_temp_dir() . '/rl_cache';
    if (!is_dir($cacheDir)) {
        mkdir($cacheDir, 0750, true);
    }

    $safeKey = preg_replace('/[^a-zA-Z0-9_\-]/', '_', $key);
    $file = $cacheDir . '/' . $safeKey . '.json';

    $now = time();
    $data = ['requests' => [], 'blocked_until' => 0];

    if (file_exists($file)) {
        $raw = file_get_contents($file);
        $parsed = json_decode($raw, true);
        if (is_array($parsed)) {
            $data = $parsed;
        }
    }

    if ($now < $data['blocked_until']) {
        return false;
    }

    $data['requests'] = array_filter($data['requests'], function($t) use ($now, $windowSeconds) {
        return ($now - $t) < $windowSeconds;
    });

    if (count($data['requests']) >= $maxRequests) {
        $data['blocked_until'] = $now + $windowSeconds;
        file_put_contents($file, json_encode($data), LOCK_EX);
        return false;
    }

    $data['requests'][] = $now;
    file_put_contents($file, json_encode($data), LOCK_EX);
    return true;
}

function getRateLimitKey($prefix) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'] ?? $_SERVER['REMOTE_ADDR'] ?? 'unknown';
    $ip = explode(',', $ip)[0];
    $ip = trim($ip);
    return $prefix . '_' . $ip;
}

function denyRateLimit() {
    http_response_code(429);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode(['result' => [['msg' => 'Too many requests. Please try again later.', 'success' => '0']]]);
    exit;
}
