<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Lowongan */

$this->title = 'Tambah Info Lowongan';
$this->params['breadcrumbs'][] = ['label' => 'Lowongans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lowongan-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>
