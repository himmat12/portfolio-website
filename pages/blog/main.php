<?php

require_once BASE_PATH . '/config.php';
include SERVER_DOC_ROOT . '/db.php';

$prepared_query = $conn->prepare("SELECT * FROM blog;");

$pdo_result = $prepared_query->execute();

$blogPosts;

if ($pdo_result) {
    $blogPosts = $prepared_query->fetchAll();
    // var_dump($blogPosts);
}

?>

<main>
    <h1>Search articles</h1>

    <?php
    include './components/search-box.php';
    ?>

    <h1>Popular articles</h1>

    <?php
    foreach ($blogPosts as $blogPost) {
        include './components/blog-post.php';
    }
    ?>
</main>