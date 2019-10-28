<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "kuisioner".
 *
 * @property int $id_kuisioner
 * @property int $id_title
 * @property string $pertanyaan
 * @property string $format_pertanyaan
 * @property string $jawaban
 * @property string $tujuan
 *
 * @property Title $title
 */
class Kuisioner extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kuisioner';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tujuan'], 'required'],
//            [['id_title'], 'integer'],
            [['pertanyaan', 'format_pertanyaan', 'jawaban', 'tujuan'], 'string'],
            [['id_title'], 'exist', 'skipOnError' => true, 'targetClass' => Title::className(), 'targetAttribute' => ['id_title' => 'id_title']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kuisioner' => 'Id Kuisioner',
            'id_title' => 'Id Title',
            'pertanyaan' => 'Pertanyaan',
            'format_pertanyaan' => 'Format Pertanyaan',
            'jawaban' => 'Jawaban',
            'tujuan' => 'Tujuan',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTitle()
    {
        return $this->hasOne(Title::className(), ['id_title' => 'id_title']);
    }
}
