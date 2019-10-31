<?php

/* @var $this yii\web\View */

$this->title = 'Tracer Study';
?>


<div class="uk-container uk-text-center">
    <p data-uk-scrollspy="cls: uk-animation-slide-left; repeat: true; delay: 150" class="uk-margin-remove-bottom tm-overtitle uk-margin-medium-top uk-text-uppercase letter-spacing-l">
        Album Foto Study Uin Suska
    </p>
    <br><br>
    <div class="uk-light uk-grid-medium uk-child-width-1-3@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <?php foreach ($album as $data) : ?>
            <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
                <a href="#" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                    <h3><?= $data['username'] ?></h3>
                    <hr>
                    <span class="uk-border-rounded">
                        <img src="<?= Yii::getAlias('@alumniImgPath') . "/" . $data['foto'] ?>" alt="" />
                    </span>
                    <p><?= $data['ttl'] ?></p>
                    <p><?= $data['email'] ?></p>
                    <p><?= $data['pekerjaan'] ?></p>
                    <p><?= $data['status'] ?></p>
                </a>
            </div>
        <?php endforeach
        ?>
    </div>
</div>