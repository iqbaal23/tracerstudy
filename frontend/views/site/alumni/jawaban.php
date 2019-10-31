<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Jawaban';
$this->params['breadcrumbs'][] = $this->title;
?>
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