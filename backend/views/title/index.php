<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\TitleSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
//use yii\bootstrap\BootstrapAsset;
$this->title = 'Title';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="title-index">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">

                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>
                        <?= Html::a('Tambah Kusioner Title', ['create'], ['class' => 'btn btn-success']) ?>
                    </p>

                    <?php Pjax::begin(); ?>
                    <?php // echo $this->render('_search', ['model' => $searchModel]); 
                    ?>

                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            //            'id_title',
                            'title:ntext',

                            ['class' => 'yii\grid\ActionColumn'],
                        ],
                    ]); ?>

                    <?php Pjax::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>