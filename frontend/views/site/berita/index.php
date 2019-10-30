<?php

use yii\helpers\Html;

$this->title = 'Berita';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
    <hr>
    <?php foreach ($berita AS $item): ?>
        <h2><?= $item->judul ?></h2>
        <p><?= $item->isi ?></p>
        <p class="text-danger">Create By <?= $item->author ?></p>
        <hr>

    <?php endforeach; ?>
</div>
