<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Kuisioner;

/**
 * KuisionerSearch represents the model behind the search form of `common\models\Kuisioner`.
 */
class KuisionerSearch extends Kuisioner
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_kuisioner', 'id_title'], 'integer'],
            [['pertanyaan', 'format_pertanyaan', 'jawaban', 'tujuan'], 'safe'],
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
        $query = Kuisioner::find();

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
            'id_kuisioner' => $this->id_kuisioner,
            'id_title' => $this->id_title,
        ]);

        $query->andFilterWhere(['like', 'pertanyaan', $this->pertanyaan])
            ->andFilterWhere(['like', 'format_pertanyaan', $this->format_pertanyaan])
            ->andFilterWhere(['like', 'jawaban', $this->jawaban])
            ->andFilterWhere(['like', 'tujuan', $this->tujuan]);

        return $dataProvider;
    }
}
