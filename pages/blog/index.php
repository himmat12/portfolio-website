<?php
require_once '../../config.php';

$title = "Blog articles"

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <?php include BASE_PATH . '/templates/header.php' ?>
    <?php include 'main.php' ?>
    <?php include BASE_PATH . '/templates/footer.php' ?>

</body>

</html>