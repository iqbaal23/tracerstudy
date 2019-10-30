<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "berita".
 *
 * @property int $berita_id
 * @property string $judul
 * @property string $isi
 * @property int $author
 */
class Berita extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'berita';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'isi', 'author'], 'required'],
            [['isi'], 'string'],
            [['author'], 'string'],
            [['judul'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'berita_id' => 'Berita ID',
            'judul' => 'Judul',
            'isi' => 'Isi',
            'author' => 'Author',
        ];
    }
}
