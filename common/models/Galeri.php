<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "galeri".
 *
 * @property int $galeri_id
 * @property string $foto
 * @property string $judul
 * @property string $username
 * @property int $album_id
 */
class Galeri extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'galeri';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['foto', 'judul', 'username', 'album_id'], 'required'],
            [['album_id'], 'integer'],
            [['foto'], 'string', 'max' => 255],
            [['judul'], 'string', 'max' => 150],
            [['username'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'galeri_id' => 'Galeri ID',
            'foto' => 'Foto',
            'judul' => 'Judul',
            'username' => 'Username',
            'album_id' => 'Album ID',
        ];
    }
}
