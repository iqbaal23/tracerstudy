<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Title */

$this->title = 'Update Title: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Title', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id_title]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="title-update">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">

                    <h1><?= Html::encode($this->title) ?></h1>

                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>