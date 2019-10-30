
<?php

/* @var $this yii\web\View */

use common\models\Title;
use yii\bootstrap\Html;

$this->title = 'Tracer Study Form Perusahaan';
$this->params['breadcrumbs'][] = $this->title;

?>

<?php if (Yii::$app->user->isGuest) : ?>
    <div class="site-error">

        <h1><?= Html::encode($this->title) ?></h1>

        <div class="alert alert-danger">
            <h2>Maaf Anda Harus Login Terlebih Dahulu Untuk Mengisi Form Kusioner Alumni</h2>
        </div>
        <a href="?r=site/login" class="btn btn-warning btn-block btn-lg">Login</a>

        <p>
            The above error occurred while the Web server was processing your request.
        </p>
        <p>
            Please contact us if you think this is a server error. Thank you.
        </p>

    </div>

<?php else : ?>
    <div class="row">
        <div class="col-lg-12 col-xl-12 col-xs-12">
            <div class="card-box">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>
                            <a onclick="history.back(-1)" class="btn btn-default" href="#"><span class="fa fa-arrow-circle-left fa-2x"></span></a>
                            Kuisioner Lulusan Program Studi FAKULTAS SAINS DAN TEKNOLOGI
                            Universitas Islam Sultan Syarif Kasim Riau (UIN SUSKA RIAU), <?= date('d-M-Y') ?>
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-success">
                            <h4>Kepada Yth, Bapak/Ibu/Saudara (alumni Program Studi Teknik Informatika
                                Universitas Sultan Syarif Kasim Riau) Di Tempat</h4>
                            <hr>
                            <p>
                                Sehubungan dengan mendukung kelengkapan data Program Studi Teknik Informatika
                                Universitas Sultan Syarif Kasim Riau dalam proses pelacakan data Alumni maka kami memohon
                                kesediaan
                                Bapak/ Ibu/ Saudara untuk memberikan jawaban pada setiap pertanyaan-pertanyaan dalam
                                kuisioner ini. Data
                                yang Bapak/Ibu/Saudara berikan
                                melalui kuisioner ini akan dijaga kerahasiaannya. Atasa kesediaan dan kerjasama yang baik
                                dari
                                Bapak/ibu/Saudara kami ucapkan terimakasih, semoga bermanfaat bagi peningkatan Kampus Pelita
                                Indonesia.
                            </p>
                        </div>
                        <div class="">
                            <?= Html::beginForm(['/site/post-perusahaan'], 'post'); ?>
                            <div class="alert alert-info">
                                <div class="form-group">
                                    <label for="">Username Perusahaan</label>
                                    <input required type="text" value="<?= Yii::$app->user->identity->username ?>" readonly class="form-control" id="" placeholder="Username perusahaan..." name="username">
                                    <input required type="hidden" class="form-control" value="perusahaan" placeholder="Nama penjawab kuisioner..." name="status">
                                    <br>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4>Form Kuisioner</h4>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-group">
                                        <?php
                                            $before = 0;
                                            $c = 0;
                                            ?>
                                        <?php foreach ($kuisioners as $kuisioner) : ?>
                                            <?php if ($before != $kuisioner->id_title) : ?>
                                                <h4 class="text text-success"><?= Title::findOne($kuisioner->id_title)['title'] ?></h4>
                                            <?php endif; ?>
                                            <li class="list-group-item">
                                                <h5><?= $c + 1 ?>. <?= $kuisioner->pertanyaan ?></h5>
                                                <p>
                                                    <input required type="hidden" name="pertanyaan[]" value="<?= $kuisioner->pertanyaan ?>">
                                                    <input required type="hidden" name="format_jawaban[]" value="<?= $kuisioner->format_pertanyaan ?>">
                                                    <?php if ($kuisioner->format_pertanyaan == 'radio' || $kuisioner->format_pertanyaan == 'radio2') : ?>
                                                        <?php $jawaban = json_decode($kuisioner->jawaban) ?>
                                                        <?php if(is_array($jawaban)) : ?>
                                                            <?php foreach ($jawaban as $radio) : ?>
                                                                <div class="radio">
                                                                    <?php if ($radio == 'text') : ?>
                                                                        <label id="<?= $c ?>label"><input required type="radio" placeholder="" name="jawaban[<?= $c ?>][0]" value="null">Lain-lain</label>
                                                                        <input type="text" placeholder="Yang lainya..." class="form-control" id="<?= $c ?>text" name="jawaban[<?= $c ?>][1]">
                                                                    <?php else : ?>
                                                                        <label><input required type="radio" id="" placeholder="" name="jawaban[<?= $c ?>][0]" value="<?= $radio ?>"><?= $radio ?></label><br>
                                                                    <?php endif; ?>
                                                                </div>
                                                            <?php endforeach; ?>
                                                        <?php endif; ?>
                                                    <?php elseif ($kuisioner->format_pertanyaan == 'text') : ?>
                                                        <input required type="text" name="jawaban[<?= $c ?>]" placeholder="Jawaban anda..." class="form-control">
                                                    <?php elseif ($kuisioner->format_pertanyaan == 'number') : ?>
                                                        <input required type="number" name="jawaban[<?= $c ?>]" placeholder="Jawaban anda..." class="form-control">
                                                    <?php elseif ($kuisioner->format_pertanyaan == 'date') : ?>
                                                        <input required type="date" name="jawaban[<?= $c ?>]" placeholder="Jawaban anda..." class="form-control">
                                                    <?php elseif ($kuisioner->format_pertanyaan == 'email') : ?>
                                                        <input required type="email" name="jawaban[<?= $c ?>]" placeholder="Jawaban anda..." class="form-control">
                                                    <?php elseif ($kuisioner->format_pertanyaan == 'table') : ?>
                                                        <?php $jawaban = json_decode($kuisioner->jawaban) ?>
                                                        <input required type="hidden" name="pertanyaan[<?= $c ?>][0]" name="" value="<?= $kuisioner->pertanyaan ?>">
                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>No.</th>
                                                                    <?php foreach ($jawaban->thead as $th) : ?>
                                                                        <th>
                                                                            <?= $th ?>
                                                                        </th>
                                                                    <?php endforeach; ?>
                                                                    <?php $cr = 0; ?>
                                                                    <?php foreach ($jawaban->radiokey as $th) : ?>
                                                                        <th>
                                                                            <?= $th ?>
                                                                            <input required type="hidden" name="jawaban[<?= $c ?>][0][<?= $cr ?>]" value="<?= $th ?>">
                                                                        </th>
                                                                        <?php $cr++ ?>
                                                                    <?php endforeach; ?>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <?php $cr = 0; ?>
                                                                <?php foreach ($jawaban->tbody as $tr) : ?>
                                                                    <tr>
                                                                        <input required type="hidden" name="pertanyaan[<?= $c ?>][1][<?= $cr ?>]" name="" value="<?= $tr[1] ?>">
                                                                        <td><?= $cr + 1 ?></td>
                                                                        <?php foreach ($tr as $td) : ?>
                                                                            <td><?= $td ?></td>
                                                                        <?php endforeach; ?>
                                                                        <?php foreach ($jawaban->radioval as $radio) : ?>
                                                                            <td>
                                                                                <label><input required type="radio" id="" placeholder="" name="jawaban[<?= $c ?>][1][<?= $cr ?>]" value="<?= $radio ?>"></label>
                                                                            </td>
                                                                        <?php endforeach; ?>
                                                                    </tr>
                                                                    <?php $cr++ ?>
                                                                <?php endforeach; ?>
                                                            </tbody>
                                                        </table>
                                                    <?php endif; ?>
                                                </p>
                                            </li>
                                            <?php
                                                    $before = $kuisioner->id_title;
                                                    $c++;
                                                    ?>
                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                                <div class="panel-footer">
                                    <button type="submit" class="btn btn-success">
                                        Submit
                                    </button>
                                </div>
                            </div>
                            <?= Html::endForm(); ?>
                        </div>


                    </div>
                    <div class="panel-footer">

                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>