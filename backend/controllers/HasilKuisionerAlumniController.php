<?php

namespace backend\controllers;

use common\models\HasilKuisionerAlumni;

//error_reporting(0);
class HasilKuisionerAlumniController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $hasil_kuisioners = HasilKuisionerAlumni::find()->all();

        // 3 tahun terakhir

        $arr_datatigatahun = [];
        $datatigatahun = [];
        $arr_persentase = [];
        $persentase = [];
        $rekap_persentase = [];
        $i = 0;
//        echo "<pre>";
        foreach ($hasil_kuisioners as $hasil_kuisioner) {
            $hasil = json_decode($hasil_kuisioner->pertanyaan_jawaban);
//            var_dump($hasil);
//            $datatigatahun[$i] = $hasil;
            if (date('Y') - $hasil[31]->jawaban <= 3) {
                $datatigatahun[$i]['nama'] = $hasil[23]->jawaban;
                $datatigatahun[$i]['ipk'] = $hasil[33]->jawaban[0];
                $datatigatahun[$i]['tahun_wisuda'] = $hasil[31]->jawaban;
                $datatigatahun[$i]['masa_studi'] = $hasil[31]->jawaban - $hasil[30]->jawaban;
                $datatigatahun[$i]['masa_menganggur'] = $hasil[20]->jawaban[0];
                array_push($arr_datatigatahun, $datatigatahun[$i]);
            }
//             echo $this->dump->variables($datatigatahun[$i]);

            $persentase[$i]['nama'] = $hasil[23]->jawaban;
            $persentase[$i]['tempat_berkerja'] = $hasil[0]->jawaban;
            $persentase[$i]['jabatan'] = $hasil[14]->jawaban;
            $persentase[$i]['kesesuaian'] = $hasil[10]->jawaban[0];
            switch ($persentase[$i]['kesesuaian']) {
                case 'Sangat sesuai dengan harapan':
                    $bobot = 4;
                    break;
                case 'Sesuai harapan':
                    $bobot = 3;
                    break;
                case 'Kurang sesuai harapan':
                    $bobot = 2;
                    break;
                case 'Tidak sesuai harapan':
                    $bobot = 1;
                    break;
            }
            $persentase[$i]['bobot'] = $bobot;
            array_push($arr_persentase, $persentase[$i]);

            $i++;
        }

//        echo "<pre>";
//        var_dump($persentase);
//        exit();


        return $this->render('index'
            , [
                'lulus3tahunterkahir' => $datatigatahun,
                'harapan' => $persentase
            ]
        );
    }

}
