<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\HasilKuisionerPerusahaan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hasil-kuisioner-perusahaan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_user')->textInput() ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pertanyaan_jawaban')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'format_jawaban')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tanggal_menjawab')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
