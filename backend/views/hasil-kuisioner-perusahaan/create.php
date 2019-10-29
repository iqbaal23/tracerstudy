<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\HasilKuisionerPerusahaan */

$this->title = 'Create Hasil Kuisioner Perusahaan';
$this->params['breadcrumbs'][] = ['label' => 'Hasil Kuisioner Perusahaans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hasil-kuisioner-perusahaan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
