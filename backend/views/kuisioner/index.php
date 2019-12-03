<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel common\models\KuisionerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kuisioner';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kuisioner-index">

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>
                        <?= Html::a('Tambah Kuisioner', ['create'], ['class' => 'btn btn-success']) ?>
                        <?= Html::a('Liat Kuisioner', ['liat'], ['class' => 'btn btn-primary']) ?>
                    </p>

                    <?php Pjax::begin(); ?>
                    <?php // echo $this->render('_search', ['model' => $searchModel]); 
                    ?>

                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            //            'id_kuisioner',
                            //            'id_title',
                            'pertanyaan:ntext',
                            'format_pertanyaan',
                            'jawaban:ntext',
                            // 'tujuan:ntext',

                            ['class' => 'yii\grid\ActionColumn'],
                        ],
                    ]); ?>

                    <?php Pjax::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>