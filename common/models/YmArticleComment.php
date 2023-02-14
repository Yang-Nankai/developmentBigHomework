<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%ym_article_comment}}".
 *
 * @property int $id
 * @property int $article_id 文章ID
 * @property string $username 留言人昵称
 * @property string $email 邮箱
 * @property string $ip ip
 * @property string $content 留言内容
 * @property int $is_delete 是否被删除, 1:是, 0:否
 * @property int $created_at 创建时间，时间戳
 */
class YmArticleComment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%article_comment}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['article_id', 'is_delete', 'created_at'], 'integer'],
            [['content'], 'required'],
            [['content'], 'string'],
            [['username'], 'string', 'max' => 50],
            [['email'], 'string', 'max' => 100],
            [['ip'], 'string', 'max' => 15],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'article_id' => '文章ID',
            'username' => '留言人昵称',
            'email' => '邮箱',
            'ip' => 'ip',
            'content' => '留言内容',
            'is_delete' => '是否被删除, 1:是, 0:否',
            'created_at' => '创建时间，时间戳',
        ];
    }

    /**
     * {@inheritdoc}
     * @return YmArticleCommentQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new YmArticleCommentQuery(get_called_class());
    }
}
