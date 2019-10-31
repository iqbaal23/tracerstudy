<?php

/* @var $this yii\web\View */

use common\models\Jurusan;

use common\models\User;
use yii\helpers\Html;

$this->title = 'Lulusan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Daftar Jurusan, Anda Juga Bisa Melihat Jawab Kusioner Dari Alumni</p>
    <hr>
    <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
        <thead>
        <tr>

            <th class="text-center">No</th>
            <th class="text-center">
                Hasil kusioner
            </th>
            <th class="text-center">Nama Lengkap</th>
            <th class="text-center">Jurusan</th>
            <th class="text-center">Jenis Kelamin</th>
            <th class="text-center">Alamat</th>
            <th class="text-center">No Telp</th>
            <th class="text-center">Angkatan</th>
            <th class="text-center">Email</th>
            <th class="text-center">Pekerjaan</th>
        </tr>
        </thead>
        <tbody>
        <?php $no = 1;
        foreach ($alumni AS $s):
         $data = User::find()->where(['no_reg' => $s->reg])->one();
                $id = $data['id'];?>
            <tr>
                <td class="text-center"><?= $no ?></td>
                <td class="text-center"><a href="?r=site/jawaban&id=<?= $id ?>"
                                           class="btn btn-primary"><span class="fa fa-eye"></span> Liat Hasil Kuisioner</a>
                </td>
                <td class="text-center"><?= $s->username ?></td>
                <td class="text-center"><?= Jurusan::findOne($s->id_jurusan)['nama_jurusan'] ?></td>
                <td class="text-center"><?= $s->jk ?></td>
                <td class="text-center"><?= $s->alamat ?></td>
                <td class="text-center"><?= $s->telp ?></td>
                <td class="text-center"><?= $s->angkatan ?></td>
                <td class="text-center"><?= $s->email ?></td>
                <td class="text-center"><?= $s->pekerjaan ?></td>
            </tr>
            <?php $no++; endforeach; ?>
        </tbody>
    </table>
</div>
