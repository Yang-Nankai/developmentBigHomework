<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\YmArticle;

/**
 * YmArticleSearch represents the model behind the search form of `common\models\YmArticle`.
 */
class YmArticleSearch extends YmArticle
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'category_id', 'hits', 'comment_count', 'is_allow_comment', 'top', 'is_show', 'bad', 'is_delete', 'is_hot', 'sort_value', 'created_at', 'updated_at'], 'integer'],
            [['title', 'title_style', 'title_image', 'author', 'description', 'keyword', 'source', 'from_platform'], 'safe'],
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
        $query = YmArticle::find();

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
            'user_id' => $this->user_id,
            'category_id' => $this->category_id,
            'hits' => $this->hits,
            'comment_count' => $this->comment_count,
            'is_allow_comment' => $this->is_allow_comment,
            'top' => $this->top,
            'is_show' => $this->is_show,
            'bad' => $this->bad,
            'is_delete' => $this->is_delete,
            'is_hot' => $this->is_hot,
            'sort_value' => $this->sort_value,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'title_style', $this->title_style])
            ->andFilterWhere(['like', 'title_image', $this->title_image])
            ->andFilterWhere(['like', 'author', $this->author])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'keyword', $this->keyword])
            ->andFilterWhere(['like', 'source', $this->source])
            ->andFilterWhere(['like', 'from_platform', $this->from_platform]);

        return $dataProvider;
    }
}
