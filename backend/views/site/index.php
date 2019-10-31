<?php

/* @var $this yii\web\View */

use common\models\Alumni;
use common\models\Jurusan;
use common\models\Lowongan;
use common\models\User;

$this->title = 'Admin Tracer Study';
$alumni = Alumni::find()->count('id_alumni');
$jurusan = Jurusan::find()->count('id_jurusan');
$user = User::find()->count('id');
$lowongan = Lowongan::find()->count('lowongan_id');
?>
<div class="site-index">
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><?= $alumni ?></h3>

                    <p>Jumlah Alumni</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <br>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <h3><?= $jurusan ?></h3>

                    <p>Jumlah Jurusan</p>
                </div>
                <div class="icon">
                    <i class="fa fa-file"></i>
                </div>
                <br>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3><?= $user ?></h3>

                    <p>User Registrations</p>
                </div>
                <div class="icon">
                    <i class="fa fa-plus"></i>
                </div>
                <br>
            </div>
        </div>

        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><?= $lowongan ?></h3>

                    <p>Jumlah Lowongan</p>
                </div>
                <div class="icon">
                    <i class="fa fa-file"></i>
                </div>
                <br>
            </div>
        </div>
        <!-- ./col -->
    </div>
</div>