<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "ym_user_comment".
 *
 * @property int $cid 评论的ID索引
 * @property string $username 评论者的名称
 * @property string $email 评论者的邮箱
 * @property string $comment 评论内容
 * @property int $created_at 评论时间
 * @property int $status 评论状态是否可见
 */
class UserComment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%user_comment}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'email', 'comment', 'created_at', 'status'], 'required'],
            [['created_at', 'status'], 'integer'],
            [['username', 'email', 'comment'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'username' => '用户名',
            'email' => '邮箱',
            'status' => '状态',
            'comment' => '评论',
            'created_at' => '创建时间',
        ];
    }
}
