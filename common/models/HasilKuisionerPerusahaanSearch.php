<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\HasilKuisionerPerusahaan;

/**
 * HasilKuisionerPerusahaanSearch represents the model behind the search form of `common\models\HasilKuisionerPerusahaan`.
 */
class HasilKuisionerPerusahaanSearch extends HasilKuisionerPerusahaan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_hasil_kuisioner_perusahaan', 'id_user'], 'integer'],
            [['nama', 'pertanyaan_jawaban', 'format_jawaban', 'tanggal_menjawab'], 'safe'],
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
        $query = HasilKuisionerPerusahaan::find();

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
            'id_hasil_kuisioner_perusahaan' => $this->id_hasil_kuisioner_perusahaan,
            'id_user' => $this->id_user,
            'tanggal_menjawab' => $this->tanggal_menjawab,
        ]);

        $query->andFilterWhere(['like', 'nama', $this->nama])
            ->andFilterWhere(['like', 'pertanyaan_jawaban', $this->pertanyaan_jawaban])
            ->andFilterWhere(['like', 'format_jawaban', $this->format_jawaban]);

        return $dataProvider;
    }
}
