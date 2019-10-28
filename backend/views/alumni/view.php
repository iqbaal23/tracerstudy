<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Alumni */

$this->title = strtoupper($model->username);
$this->params['breadcrumbs'][] = ['label' => 'Alumni', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="alumni-view">

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>
                        <?= Html::a('Update', ['update', 'id' => $model->id_alumni], ['class' => 'btn btn-primary']) ?>
                        <?= Html::a('Delete', ['delete', 'id' => $model->id_alumni], [
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
                            'id_alumni',
                            'username',
                            'reg',
                            'status',
                            'ttl',
                            'id_jurusan',
                            'jk',
                            'agama',
                            'alamat',
                            'telp',
                            'angkatan',
                            'ipk',
                            'email:email',
                            'pekerjaan:ntext',
                            'foto',
                        ],
                    ]) ?>
                </div>
            </div>
        </div>
    </div>

</div>