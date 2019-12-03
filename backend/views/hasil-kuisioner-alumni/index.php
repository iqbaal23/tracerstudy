<?php
/* @var $this yii\web\View */
$this->title = 'Hasil Kusioner Almuni'
?>
<!-- <pre><?php var_dump($harapan)?></pre> -->
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Lulusan 3 Tahun Terkahir
            </div>
            <div class="panel-body">
                <?php foreach ($lulus3tahunterkahir as $s): ?>
                    <div class="box box-default collapsed-box">
                        <div class="box-header with-border">
                            <h4 class="box-title text-capitalize"><?= $s['nama'] ?></h4>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                            class="fa fa-plus"></i>
                                </button>
                            </div>
                            <!-- /.box-tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Nama Lengkap</th>
                                    <td><?= $s['nama'] ?></td>
                                </tr>
                                <tr>
                                    <th>IPK</th>
                                    <td><?= $s['ipk'] ?></td>
                                </tr>
                                <tr>
                                    <th>Tahun Wisuda</th>
                                    <td><?= $s['tahun_wisuda'] ?></td>
                                </tr>
                                <tr>
                                    <th>Masa Study</th>
                                    <td><?= $s['masa_studi'] ?></td>
                                </tr>
                                <tr>
                                    <th>Masa Mengganggur</th>
                                    <td><?= $s['masa_menganggur'] ?></td>
                                </tr>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Persentasi Kelulusan Berdasakaran Tingkat Kepuasan Kerja</div>
            <div class="panel-body">
                <?php foreach ($harapan as $v1): ?>
                    <table class="table table-bordered">
                        <tr>
                            <th>Nama Lengkap</th>
                            <td width="50%"><?= $v1['nama'] ?></td>
                        </tr>
                        <tr>
                            <th>Jabatan Sekarang Diperusahaan</th>
                            <td width="50%"><?= $v1['jabatan'] ?></td>
                        </tr>
                        <tr>
                            <th>Kesesusain Pekerjaan Dengan Jurusan</th>
                            <td width="50%"><?= $v1['kesesuaian'] ?></td>
                        </tr>
                        <tr>
                            <th>Grafik</th>
                            <td>
                                <div class="progress">
                                    <?php if ($v1['bobot'] == '4'): ?>
                                        <div class="progress-bar progress-bar-success progress-bar-striped"
                                             role="progressbar" aria-valuenow="100" aria-valuemin="100" aria-valuemax="100"
                                             style="width: 100%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    <?php elseif ($v1['bobot'] == '3'): ?>
                                        <div class="progress-bar progress-bar-primary progress-bar-striped"
                                             role="progressbar" aria-valuenow="70" aria-valuemin="70" aria-valuemax="100"
                                             style="width: 70%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    <?php elseif ($v1['bobot'] == '2'): ?>
                                        <div class="progress-bar progress-bar-warning progress-bar-striped"
                                             role="progressbar" aria-valuenow="50" aria-valuemin="50" aria-valuemax="100"
                                             style="width: 50%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    <?php elseif ($v1['bobot'] == '1'): ?>
                                        <div class="progress-bar progress-bar-danger progress-bar-striped"
                                             role="progressbar" aria-valuenow="30" aria-valuemin="30" aria-valuemax="100"
                                             style="width: 30%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    <?php endif; ?>

                                </div>
                            </td>
                        </tr>
                    </table>
                <?php endforeach; ?>
            </div>
        </div>

    </div>
</div>