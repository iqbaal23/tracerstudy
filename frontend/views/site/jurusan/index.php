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
    <div class="uk-light uk-grid-medium uk-child-width-1-4@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <?php foreach ($jurusans as $jurusan) : ?>
            <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
                <a href="?r=site/tracer-study" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                    <span class="uk-icon-forder uk-border-rounded">
                        <span data-uk-icon="icon: mail; ratio: 2"></span></span>
                    <p><?= $jurusan->nama_jurusan ?></p>
                    
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>