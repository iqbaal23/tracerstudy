<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kuisioner */

$this->title = 'Update Kuisioner: ' . $model->pertanyaan;
$this->params['breadcrumbs'][] = ['label' => 'Kuisioners', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_kuisioner, 'url' => ['view', 'id' => $model->id_kuisioner]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kuisioner-update">

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