<?php

use app\models\Title;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Kuisioner */
/* @var $form yii\widgets\ActiveForm */

$title = Title::find()->all();
$listData = ArrayHelper::map($title, 'id_title', 'title');
?>

<div class="kuisioner-form">

    <?php $form = ActiveForm::begin(); ?>


    <?= $form->field($model, 'pertanyaan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'format_pertanyaan')->dropDownList(['radio' => 'Radio', 'text' => 'Text', 'table' => 'Table', 'date' => 'Date', 'email' => 'Email', 'number' => 'Number', 'radio2' => 'Radio2', 'select' => 'Select',], ['prompt' => '']) ?>

    <?= $form->field($model, 'jawaban')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'tujuan')->dropDownList(['alumni'=>'Alumni', 'user'=>'User'], ['prompt' => 'Pilih']) ?>

    <?= $form->field($model, 'id_title')->dropDownList($listData, ['prompt' => 'Pilih']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>