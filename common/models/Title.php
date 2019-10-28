<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "title".
 *
 * @property int $id_title
 * @property string $title
 *
 * @property Kuisioner[] $kuisioners
 */
class Title extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'title';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['title'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_title' => 'Id Title',
            'title' => 'Title',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getKuisioners()
    {
        return $this->hasMany(Kuisioner::className(), ['id_title' => 'id_title']);
    }
}
