<?php
$configPath = './config.ini';

$config = parse_ini_file($configPath, true)['database'];

$host = $config['host'];
$dbname = $config['dbname'];
$username = $config['username'];
$password = $config['password'];
$charset = 'utf8mb4';

$dns = "mysql:host={$host};dbname={$dbname};charset={$charset}";

$conn = new PDO($dns, $username, $password);

