<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Agenda */

$this->title = 'Create Agenda';
$this->params['breadcrumbs'][] = ['label' => 'Agendas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agenda-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
