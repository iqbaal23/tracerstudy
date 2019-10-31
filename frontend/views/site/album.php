<?php

/* @var $this yii\web\View */

$this->title = 'Tracer Study';
?>


<div class="uk-container uk-text-center">
    <p data-uk-scrollspy="cls: uk-animation-slide-left; repeat: true; delay: 150" class="uk-margin-remove-bottom tm-overtitle uk-margin-medium-top uk-text-uppercase letter-spacing-l">
        Album Foto Study Uin Suska
    </p>
    <div class="row col-md-12">
        <?php foreach ($album as $data) : ?>

            <div class="col-md-4">
                <div class="card text-white text-ceter">
                    <div class="card-header">
                        <img style="height:250px; width: 250px" class="card-img-top" src="<?= Yii::getAlias('@alumniImgPath') . "/" . $data['foto'] ?>" alt="">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title"><?= $data['username'] ?></h4>
                        <p class="card-text"><?= $data['status'] ?></p>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
    </div>
    
    <!-- <h1 class="uk-h1 uk-margin-small-top uk-margin-medium-bottom uk-heading-line" style="font-family: 'DejaVu Sans Light'" data-uk-scrollspy="cls: uk-animation-slide-right; repeat: true; delay: 150">How can we
        help?</h1>

    <div class="uk-light uk-grid-medium uk-child-width-1-3@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
            <a href="?r=site/tracer-study" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: mail; ratio: 2"></span></span>
                <p>Form Kusioner Tracer Study</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 150">
            <a href="#search" data-uk-toggle class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: check; ratio: 2"></span></span>
                <p>Agenda </p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/lulusan" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: list; ratio: 2"></span></span>
                <p>Data Alumni</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/lihat" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: list; ratio: 2"></span></span>
                <p>Berita</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/jurusan" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: list; ratio: 2"></span></span>
                <p>Jurusan</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/lowongan" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: list; ratio: 2"></span></span>
                <p>Lowongan</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/album" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: list; ratio: 2"></span></span>
                <p>Album Alumni</p>
            </a>
        </div>
        <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 200">
            <a href="?r=site/lihat" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                <span class="uk-icon-forder uk-border-rounded">
                    <span data-uk-icon="icon: cart; ratio: 2"></span></span>
                <p>Grafik</p>
            </a>
        </div>
    </div>  -->
</div>