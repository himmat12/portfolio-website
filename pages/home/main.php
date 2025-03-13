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
    <?php
    include './pages/home/home-page-section.php';
    ?>
</main>