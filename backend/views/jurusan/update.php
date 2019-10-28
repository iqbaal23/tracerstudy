<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Jurusan */

$this->title = 'Update Jurusan: ' . $model->nama_jurusan;
$this->params['breadcrumbs'][] = ['label' => 'Jurusan', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nama_jurusan, 'url' => ['view', 'id' => $model->id_jurusan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="jurusan-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
