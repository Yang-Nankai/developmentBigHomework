<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%ym_article_contents}}".
 *
 * @property int $id id，关联article表id
 * @property string|null $content 文章内容
 * @property int $created_at 创建时间，时间戳
 * @property int $updated_at 更新时间，时间戳
 */
class YmArticleContents extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%article_contents}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'created_at', 'updated_at'], 'integer'],
            [['content'], 'string'],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'id，关联article表id',
            'content' => '文章内容',
            'created_at' => '创建时间，时间戳',
            'updated_at' => '更新时间，时间戳',
        ];
    }

    /**
     * {@inheritdoc}
     * @return YmArticleContentsQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new YmArticleContentsQuery(get_called_class());
    }
}
