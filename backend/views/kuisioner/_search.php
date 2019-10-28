<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\KuisionerSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kuisioner-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id_kuisioner') ?>

    <?= $form->field($model, 'id_title') ?>

    <?= $form->field($model, 'pertanyaan') ?>

    <?= $form->field($model, 'format_pertanyaan') ?>

    <?= $form->field($model, 'jawaban') ?>

    <?php // echo $form->field($model, 'tujuan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
