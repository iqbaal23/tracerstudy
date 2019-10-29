<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\HasilKuisionerPerusahaanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hasil-kuisioner-perusahaan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id_hasil_kuisioner_perusahaan') ?>

    <?= $form->field($model, 'id_user') ?>

    <?= $form->field($model, 'nama') ?>

    <?= $form->field($model, 'pertanyaan_jawaban') ?>

    <?= $form->field($model, 'format_jawaban') ?>

    <?php // echo $form->field($model, 'tanggal_menjawab') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
