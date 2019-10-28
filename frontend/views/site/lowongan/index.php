<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Daftar Jurusan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Daftar Jurusan, Anda Juga Bisa Melihat Jawab Kusioner Dari Alumni</p>

    <!-- <code><?= __FILE__ ?></code> -->
    <div class="uk-light uk-grid-medium uk-child-width-1-3@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <?php foreach ($lowongans as $l) : ?>
            <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
                <a href="#" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                    <span class="uk-border-rounded">
                        <img src="<?= Yii::$app->params['front'] ?><?= $l->file ?>" alt="" />
                    </span>
                    <p><?= $l->judul ?></p>
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>