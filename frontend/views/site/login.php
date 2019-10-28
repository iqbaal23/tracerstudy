<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */

/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="uk-grid-match uk-child-width-1-1@m" uk-grid data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 150">
                    <div></div>
                    <div>
                        <h1 data-uk-scrollspy="cls: uk-animation-slide-left; repeat: true; delay: 150"><span uk-icon="icon: sign-in; ratio: 2.5"></span>&nbsp;<?= Html::encode($this->title) ?></h1>
                        <p>Silahkan Isi Username & Password login:</p>
                        <?php $form = ActiveForm::begin([
                            'id' => 'login-form',
                        ]); ?>

                        <?= $form->field($model, 'username')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Username"]) ?>

                        <?= $form->field($model, 'password')->passwordInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Password"]) ?>

                        <?= $form->field($model, 'rememberMe')->checkbox(['class' => 'uk-checkbox']) ?>

                        <?= Html::submitButton(
                            'Login',
                            [
                                'class' => 'btn btn-primary btn-block btn-lg',
                                'name' => 'login-button'
                            ]
                        ) ?>
                        <a href="?r=site/signup" class="btn btn-warning btn-block btn-lg">Sign Up</a>
                    </div>
                    <div></div>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>