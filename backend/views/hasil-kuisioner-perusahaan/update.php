<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\HasilKuisionerPerusahaan */

$this->title = 'Update Hasil Kuisioner Perusahaan: ' . $model->id_hasil_kuisioner_perusahaan;
$this->params['breadcrumbs'][] = ['label' => 'Hasil Kuisioner Perusahaans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_hasil_kuisioner_perusahaan, 'url' => ['view', 'id' => $model->id_hasil_kuisioner_perusahaan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hasil-kuisioner-perusahaan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
