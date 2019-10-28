<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Lowongan */

$this->title = $model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Lowongan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lowongan-view box box-primary">
    <div class="box-header">
        <?= Html::a('Update', ['update', 'id' => $model->lowongan_id], ['class' => 'btn btn-primary btn-flat']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->lowongan_id], [
            'class' => 'btn btn-danger btn-flat',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </div>
    <div class="box-body table-responsive no-padding">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'lowongan_id',
                'judul:ntext',
                'isi:html',
                // 'file',
                [
                    'label' => 'Lowongan Foto',
                    'format' => 'raw',
                    'value' => '<button type="button" class="btn btn-default"
            data-toggle="modal" data-target="#foto-' . $model->lowongan_id . '"><img src="' . Yii::$app->request->baseUrl . '/lowongan/' . $model->file . '" width="60px" height="60px"/></button>

<div class="modal fade " id="foto-' . $model->lowongan_id . '" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title text-center" id="exampleModalLabel">' . $model->file . '</h2>
      </div>
      <div class="modal-body text-center">
            <img src="' . Yii::$app->request->baseUrl . '/lowongan/' . $model->file . '" width="800px"/>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
',
                ],
            ],
        ]) ?>
    </div>
</div>
