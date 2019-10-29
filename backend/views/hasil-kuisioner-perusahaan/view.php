<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\HasilKuisionerPerusahaan */

$this->title = $model->id_hasil_kuisioner_perusahaan;
$this->params['breadcrumbs'][] = ['label' => 'Hasil Kuisioner Perusahaans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="hasil-kuisioner-perusahaan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_hasil_kuisioner_perusahaan], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_hasil_kuisioner_perusahaan], [
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
            'id_hasil_kuisioner_perusahaan',
            'id_user',
            'nama',
            'pertanyaan_jawaban:ntext',
            'format_jawaban:ntext',
            'tanggal_menjawab',
        ],
    ]) ?>

</div>
