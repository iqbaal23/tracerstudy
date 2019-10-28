<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kuisioner */

$this->title = 'Form Kuisioner';
$this->params['breadcrumbs'][] = ['label' => 'Kuisioner', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kuisioner-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
