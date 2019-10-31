<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Daftar Jurusan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <?php if (!Yii::$app->user->isGuest) : ?>
        <div class="box-header with-border">
            <?= Html::a('Lowongan Saya', ['lowongan/index'], ['class' => 'btn btn-success btn-flat']) ?>
        </div>
    <?php endif; ?>

    <p>Daftar Jurusan, Anda Juga Bisa Melihat Jawab Kusioner Dari Alumni</p>

    <!-- <code><?= __FILE__ ?></code> -->
    <div class="uk-light uk-grid-medium uk-child-width-1-3@m uk-grid-small uk-grid-match tm-margin-large-top uk-text-center" data-uk-grid>
        <?php foreach ($lowongans as $l) : ?>
            <div data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100">
                <a href="#" class="uk-card uk-card-box uk-card-body uk-border-rounded"  data-toggle="modal" data-target="#<?= $l->lowongan_id ?>">
                    <span class="uk-border-rounded">
                        <img src="<?= Yii::$app->params['front'] ?><?= $l->file ?>" alt="" />
                    </span>
                    <p><?= $l->judul ?></p>
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>

<?php foreach ($lowongans as $l) : ?>
<div class="modal fade" id="<?= $l->lowongan_id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><?= $l->judul ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p><?= $l->isi ?></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<?php endforeach ?>