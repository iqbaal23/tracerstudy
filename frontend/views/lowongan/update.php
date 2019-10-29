<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Lowongan */

$this->title = 'Update Lowongan: ' . $model->lowongan_id;
$this->params['breadcrumbs'][] = ['label' => 'Lowongans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->lowongan_id, 'url' => ['view', 'id' => $model->lowongan_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="lowongan-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
