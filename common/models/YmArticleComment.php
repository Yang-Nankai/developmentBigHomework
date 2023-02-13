<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%ym_article_comment}}".
 *
 * @property int $id
 * @property int $article_id 文章ID
 * @property string $nickname 留言人昵称
 * @property string $reply_comment_ids 回复的所有评论id
 * @property int $reply_comment_id 回复的留言ID
 * @property string $email 邮箱
 * @property string $avatar 随机头像
 * @property string $ip ip
 * @property string $content 留言内容
 * @property int $is_delete 是否被删除, 1:是, 0:否
 * @property int $is_read 是否已读, 1:是, 0:否, 针对博主的
 * @property int $created_at 创建时间，时间戳
 * @property int $updated_at 更新时间，时间戳
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
            [['article_id', 'reply_comment_id', 'is_delete', 'is_read', 'created_at', 'updated_at'], 'integer'],
            [['content'], 'required'],
            [['content'], 'string'],
            [['nickname'], 'string', 'max' => 50],
            [['reply_comment_ids'], 'string', 'max' => 255],
            [['email', 'avatar'], 'string', 'max' => 100],
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
            'nickname' => '留言人昵称',
            'reply_comment_ids' => '回复的所有评论id',
            'reply_comment_id' => '回复的留言ID',
            'email' => '邮箱',
            'avatar' => '随机头像',
            'ip' => 'ip',
            'content' => '留言内容',
            'is_delete' => '是否被删除, 1:是, 0:否',
            'is_read' => '是否已读, 1:是, 0:否, 针对博主的',
            'created_at' => '创建时间，时间戳',
            'updated_at' => '更新时间，时间戳',
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
