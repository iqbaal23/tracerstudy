<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Berita */

$this->title = 'From Tambah Berita';
$this->params['breadcrumbs'][] = ['label' => 'Berita', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="berita-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>
