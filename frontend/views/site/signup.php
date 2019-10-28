<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\file\FileInput;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">

                <div class="uk-grid-match uk-child-width-1-1@m" uk-grid>
                    <div class="">
                        <h1 data-uk-scrollspy="cls: uk-animation-slide-left; repeat: true; delay: 150"><span uk-icon="icon: sign-in; ratio: 2.5"></span>&nbsp;<?= Html::encode($this->title) ?></h1>
                        <p>Silahkan Isi Data Diri Anda</p>
                        <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
                        <?= $form->field($model, 'username')->textInput(['autofocus' => false, 'class' => 'uk-input input-lg form-control', "placeholder" => "Username"]) ?>

                        <?= $form->field($model, 'email')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Email"]) ?>

                        <?= $form->field($model, 'password')->passwordInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Password"]) ?>

                        <hr>
                        <?= $form->field($Alumni, 'status')->dropDownList(['Menikah' => "Menikah", 'Lajang' => "Lajang"], ['prompt' => "Pilih Status"]) ?>
                        <?= $form->field($Alumni, 'ttl')->textInput(['autofocus' => false, 'class' => 'uk-input input-lg form-control', "placeholder" => "Tempat Tanggal Lahir"]) ?>
                        <?= $form->field($Alumni, 'id_jurusan')->dropDownList($jurusan, ['prompt' => "Pilih Jurusan"]) ?>
                        <?= $form->field($Alumni, 'jk')->dropDownList(['Perempuan' => "Perempuan", 'Laki-Laki' => "Laki-Laki"], ['prompt' => "Pilih Jenis Kelamin"]) ?>
                        <?= $form->field($Alumni, 'agama')->dropDownList(
                            [
                                'Islam' => "Islam",
                                'Kristen' => "Kristen",
                                'Budha' => "Budha",
                            ],
                            ['prompt' => "Pilih Agama"]
                        )
                        ?>
                        <?= $form->field($Alumni, 'alamat')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Alamat Sesuai KTP"]) ?>
                        <?= $form->field($Alumni, 'telp')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Nomor HP Yang Aktif"]) ?>
                        <?= $form->field($Alumni, 'angkatan')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Angkatan"]) ?>
                        <?= $form->field($Alumni, 'ipk')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "IPK"]) ?>
                        <?= $form->field($Alumni, 'pekerjaan')->textInput(['class' => 'uk-input input-lg form-control', "placeholder" => "Pekerjaan Sekarang"]) ?>
                        <?= $form->field($Alumni, 'foto')->widget(FileInput::className(), [
                            'options' => ['accept' => 'image/*']
                        ]) ?>


                        <div class="form-group">
                            <?= Html::submitButton('Daftar', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                        </div>
                    </div>
                    <div></div>

                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
</div>