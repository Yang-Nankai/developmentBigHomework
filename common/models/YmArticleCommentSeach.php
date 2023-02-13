<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\YmArticleComment;

/**
 * YmArticleCommentSeach represents the model behind the search form of `common\models\YmArticleComment`.
 */
class YmArticleCommentSeach extends YmArticleComment
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'article_id', 'reply_comment_id', 'is_delete', 'is_read', 'created_at', 'updated_at'], 'integer'],
            [['nickname', 'reply_comment_ids', 'email', 'avatar', 'ip', 'content'], 'safe'],
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
        $query = YmArticleComment::find();

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
            'article_id' => $this->article_id,
            'reply_comment_id' => $this->reply_comment_id,
            'is_delete' => $this->is_delete,
            'is_read' => $this->is_read,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'nickname', $this->nickname])
            ->andFilterWhere(['like', 'reply_comment_ids', $this->reply_comment_ids])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'avatar', $this->avatar])
            ->andFilterWhere(['like', 'ip', $this->ip])
            ->andFilterWhere(['like', 'content', $this->content]);

        return $dataProvider;
    }
}
