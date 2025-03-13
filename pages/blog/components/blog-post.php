<?php

$tagIds = $blogPost['Tags'];
$tagIdArr = explode(',', $tagIds);
$tags = [];

foreach ($tagIdArr as $tagId) {
    $prepare = $conn->prepare("SELECT Title from tags WHERE tags.TagId = " . $tagId . ";");

    $prepare->execute();

    $tag = $prepare->fetch(PDO::FETCH_ASSOC);

    // echo ($tag['Title']);
    $tags[] = "#" . $tag['Title'];
}

// var_dump($tags);

$tagsStr = implode(' | ', $tags);
?>

<section class="blog-post-wrapper">
    <h2><?= $blogPost['Title'] ?></h2>
    <p><?= $blogPost['Content'] ?></p>
    <p><i><strong><?= $tagsStr ?></strong></i></p>

</section>