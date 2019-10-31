<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Agenda';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-agenda">
    <h1><?= Html::encode($this->title) ?></h1>

    <div class="uk-light uk-grid-medium uk-child-width-1-3@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <?php foreach ($agenda as $data) : ?>
            <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
                <a href="#" class="uk-card uk-card-box uk-card-body uk-border-rounded">
                    <h3><?= $data['judul'] ?></h3><hr>
                    <!-- <span class="uk-border-rounded">
                        <img src="<?php //Yii::$app->params['front']
                                        ?><?php //$data->file 
                                ?>" alt="" />
                    </span> -->
                    <p><?= $data['isi'] ?></p><hr>
                    <small>Created By: <?= $data['username']?></small>
                </a>
            </div>
    </div>
<?php endforeach ?>
</div>
</div>