<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "agenda".
 *
 * @property int $agenda_id
 * @property string $judul
 * @property string $isi
 * @property string $username
 */
class Agenda extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'agenda';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'isi', 'username'], 'required'],
            [['isi'], 'string'],
            [['judul'], 'string', 'max' => 255],
            [['username'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'agenda_id' => 'Agenda ID',
            'judul' => 'Judul',
            'isi' => 'Isi',
            'username' => 'Username',
        ];
    }
}
