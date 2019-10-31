<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Alumni */

$this->title = 'Update Alumni: ' . $model->id_alumni;
$this->params['breadcrumbs'][] = ['label' => 'Alumnis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_alumni, 'url' => ['view', 'id' => $model->id_alumni]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="alumni-update">

                    <h1><?= Html::encode($this->title) ?></h1>

                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>