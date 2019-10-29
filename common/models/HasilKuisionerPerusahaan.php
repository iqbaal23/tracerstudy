<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "hasil_kuisioner_perusahaan".
 *
 * @property int $id_hasil_kuisioner_perusahaan
 * @property int $id_user
 * @property string $nama
 * @property string $pertanyaan_jawaban
 * @property string $format_jawaban
 * @property string $tanggal_menjawab
 */
class HasilKuisionerPerusahaan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'hasil_kuisioner_perusahaan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_user', 'format_jawaban'], 'required'],
            [['id_user'], 'integer'],
            [['pertanyaan_jawaban', 'format_jawaban'], 'string'],
            [['tanggal_menjawab'], 'safe'],
            [['nama'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_hasil_kuisioner_perusahaan' => 'Id Hasil Kuisioner Perusahaan',
            'id_user' => 'Id User',
            'nama' => 'Nama',
            'pertanyaan_jawaban' => 'Pertanyaan Jawaban',
            'format_jawaban' => 'Format Jawaban',
            'tanggal_menjawab' => 'Tanggal Menjawab',
        ];
    }
}
