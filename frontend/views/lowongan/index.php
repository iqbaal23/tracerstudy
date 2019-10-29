<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\LowonganSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Info Lowongan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lowongan-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Tambah Lowongan', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <br>
    <div class="box-body table-responsive">
        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'layout' => "{items}\n{summary}\n{pager}",
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'lowongan_id',
                'judul',
                'isi:html',
                // 'file',

                [
                    'class' => 'yii\grid\ActionColumn',
                    'contentOptions' => ['style' => 'width: 75px;']
            ],
            ],
        ]); ?>
    </div>
</div>