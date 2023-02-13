<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\YmArticleCategory;

/**
 * YmArticleCategorySearch represents the model behind the search form of `common\models\YmArticleCategory`.
 */
class YmArticleCategorySearch extends YmArticleCategory
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'status', 'parent_id', 'sort_value', 'created_at', 'updated_at'], 'integer'],
            [['category_name', 'parents'], 'safe'],
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
        $query = YmArticleCategory::find();

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
            'id' => $this->id,
            'status' => $this->status,
            'parent_id' => $this->parent_id,
            'sort_value' => $this->sort_value,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'category_name', $this->category_name])
            ->andFilterWhere(['like', 'parents', $this->parents]);

        return $dataProvider;
    }
}
