<?php

require_once BASE_PATH . '/config.php';

// function to connect database
function connectDB()
{
    // accessing the environment variable to access db credentials
    $config = parse_ini_file(BASE_PATH . '/config.ini', true)['database'];

    // mapping the env credentials to respective fields for dns string
    $host = $config['host'];
    $dbname = $config['dbname'];
    $username = $config['username'];
    $password = $config['password'];
    $charset = 'utf8mb4';

    $dns = "mysql:host={$host};dbname={$dbname};charset={$charset}";

    try {
        $pdo = new PDO(
            $dns,
            $username,
            $password,
            [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // setting PDO error mode to exception
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // setting default PDO fetch mode to fetach associative array
                PDO::ATTR_EMULATE_PREPARES => false // implements PDO to use real prepared statements 
            ]
        );

        return $pdo;
    } catch (PDOException $e) {
        // logging the error in production environment
        error_log("Database connection failed: " . $e->getMessage());

        // returning false to indicate connection failure
        return false;
    }
}
