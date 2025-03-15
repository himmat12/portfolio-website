<?php
require_once './config.php';

$title = "Himmat Portfolio"

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" href="styles.css">

    <script src="demo.js" defer></script>
</head>

<body class="app">
    <div class="test-box">
        This is demo for integrating backend api

    </div>
    <button class="get-data-btn">get data</button>

    <?php include BASE_PATH . '/templates/header.php' ?>
    <?php include  BASE_PATH . '/pages/home/main.php' ?>
    <?php include BASE_PATH . '/templates/footer.php' ?>

</body>

</html>