<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lowongan".
 *
 * @property int $lowongan_id
 * @property string $judul
 * @property string $isi
 * @property string $file
 */
class Lowongan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lowongan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'isi'], 'required'],
            [['isi'], 'string'],
            [['judul'], 'string', 'max' => 255],
            [['file'],  'file', 'skipOnEmpty' => TRUE, 'extensions' => 'png, jpg'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'lowongan_id' => 'Lowongan ID',
            'judul' => 'Judul',
            'isi' => 'Isi',
            'file' => 'File',
        ];
    }
}
