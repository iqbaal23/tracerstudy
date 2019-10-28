<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Title */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Title', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="title-view">

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>
                        <?= Html::a('Update', ['update', 'id' => $model->id_title], ['class' => 'btn btn-primary']) ?>
                        <?= Html::a('Delete', ['delete', 'id' => $model->id_title], [
                            'class' => 'btn btn-danger',
                            'data' => [
                                'confirm' => 'Are you sure you want to delete this item?',
                                'method' => 'post',
                            ],
                        ]) ?>
                    </p>

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            //            'id_title',
                            'title:ntext',
                        ],
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>