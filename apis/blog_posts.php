<?php

require_once '../config.php';
include './db_connect.php';


// db connection
$pdo = connectDB();


// accessing the query parameter and setting it to empty string
$query = isset($_GET['query']) ? $_GET['query'] : '';


// checking the connection and if failed then returning these data
if (!$pdo) {
    header('HTTP/1.1 500 Internal Server Error');
    header('Content-Type: application/json');
    echo json_encode(['message' => 'Database connection failed']);
}

try {
    // prepareing SQL query
    $sql = "SELECT * FROM blog WHERE blog.Title LIKE :query;";
    $stmt = $pdo->prepare($sql);

    // adding wildcard for LIKE query
    $searchParam = "%" . $query . "%";
    $stmt->bindParam(":query", $searchParam, PDO::PARAM_STR);

    // executing query
    $stmt->execute();
    $items = $stmt->fetchAll();

    // returning the results as JSON
    header('Content-Type: application/json');
    echo json_encode(['data' => $items]);
} catch (PDOException $e) {
    //  logging the error in production env
    error_log("Search query failed: " . $e->getMessage());

    // returning error response
    header('HTTP/1.1 500 Internal Server Error');
    header('Content-Type: application/json');
    echo json_encode(['message' => 'Database query failed']);
} finally {
    //  closing the database connection by setting it to null
    $pdo = null;
}
