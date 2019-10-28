<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

use dosamigos\ckeditor\CKEditor;
use kartik\file\FileInput;
/* @var $this yii\web\View */
/* @var $model common\models\Lowongan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lowongan-form box box-primary">
    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'judul')->textInput(['maxlength' => true, 'placeholder' => "Judul Lowongan"]) ?>

        <?= $form->field($model, 'isi')->widget(CKEditor::className(), [
            'options' => ['rows' => 6],
            'preset' => 'basic'
        ]) ?>

        <?= $form->field($model, 'file')->widget(FileInput::className(), [
            'options' => ['accept' => 'image/*']
        ]) ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-block btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>