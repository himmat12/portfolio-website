<?php

require_once BASE_PATH . '/config.php';

$config = parse_ini_file(SERVER_CONFIG . '/config.ini', true)['database'];

$host = $config['host'];
$dbname = $config['dbname'];
$username = $config['username'];
$password = $config['password'];
$charset = 'utf8mb4';

$dns = "mysql:host={$host};dbname={$dbname};charset={$charset}";

$conn = new PDO($dns, $username, $password);
