<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Alumni */

//$this->title = strtoupper($model->username);
$this->title = 'Cek Hasil Kusioner';
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="site-about">
                    <button type="button" class="btn btn-default" onclick="history.back(-1)">
                        <span class="fa fa-arrow-circle-left"></span>
                    </button>
                    <h1><?= Html::encode($this->title) ?></h1>

                    <p>Jawaban Alumni</p>
                    <?php
                    
                        if($jawaban == null){
                            echo '<div class="alert alert-danger">
                                    Alumni belum mengisi kuisioner
                                </div>';
                        } else {
                    ?>
                    
                        <?php
                        $pertanyaan_jawaban = json_decode($jawaban['pertanyaan_jawaban']);

                        // var_dump($pertanyaan_jawaban);
                        ?>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>Pertanyaan</th>
                                <th>Jawaban</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($pertanyaan_jawaban as $value) : ?>
                                <tr>
                                    <td><?= $value->pertanyaan ?></td>
                                    <td>
                                        <?php if (is_array($value->jawaban)) : ?>
                                            <?= $value->jawaban[0] ?>
                                        <?php else : ?>
                                            <?= $value->jawaban ?>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php
                        }
                    
                    ?>

                </div>
            </div>
        </div>
    </div>
</div>
