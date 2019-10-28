<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Kuisioner */

$this->title = $model->pertanyaan;
$this->params['breadcrumbs'][] = ['label' => 'Kuisioners', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="kuisioner-view">

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>
                        <?= Html::a('Update', ['update', 'id' => $model->id_kuisioner], ['class' => 'btn btn-primary']) ?>
                        <?= Html::a('Delete', ['delete', 'id' => $model->id_kuisioner], [
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
                            'id_kuisioner',
                            'id_title',
                            'pertanyaan:ntext',
                            'format_pertanyaan',
                            'jawaban:ntext',
                            'tujuan',
                        ],
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>