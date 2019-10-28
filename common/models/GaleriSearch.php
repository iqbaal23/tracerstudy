<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Galeri;

/**
 * GaleriSearch represents the model behind the search form of `common\models\Galeri`.
 */
class GaleriSearch extends Galeri
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['galeri_id', 'album_id'], 'integer'],
            [['foto', 'judul', 'username'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Galeri::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'galeri_id' => $this->galeri_id,
            'album_id' => $this->album_id,
        ]);

        $query->andFilterWhere(['like', 'foto', $this->foto])
            ->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'username', $this->username]);

        return $dataProvider;
    }
}
