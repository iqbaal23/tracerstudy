<?php

use common\models\Jurusan;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\AlumniSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Alumni';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">

                <div class="alumni-index">

                    <h1><?= Html::encode($this->title) ?></h1>

                    <!-- <p>
                        <?= Html::a('Tambah Alumni', ['create'], ['class' => 'btn btn-success']) ?>
                    </p> -->

                    <?php Pjax::begin(); ?>
                    <?php // echo $this->render('_search', ['model' => $searchModel]); 
                    ?>

                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            // 'id_alumni',
                            'username',
                            'reg',
                            'status',
                            'ttl',
                            [
                                'label' => 'Nama Jurusan',
                                'value' => function ($model) {
                                    return   Jurusan::findOne($model->id_jurusan)['nama_jurusan'];
                                }
                            ],
                            //'jk',
                            //'agama',
                            //'alamat',
                            //'telp',
                            //'angkatan',
                            //'ipk',
                            //'email:email',
                            //'pekerjaan:ntext',
                            //'foto',

                            [
                                'class' => 'yii\grid\ActionColumn',
                                'template' => '{view} {update} {delete} {myButton}',  // the default buttons + your custom button
                                'buttons' => [
                                    'myButton' => function ($url, $model, $key) {     // render your custom button
                                        return Html::a('Hasil Kusioner', ['alumni/cek', 'id' => $model->id_alumni], ['class' => "btn btn-primary"]);
                                    }
                                ]

                            ],
                        ],
                    ]); ?>

                    <?php Pjax::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>