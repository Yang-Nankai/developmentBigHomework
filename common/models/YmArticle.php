<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%ym_article}}".
 *
 * @property int $id
 * @property int $user_id 发布人用户id
 * @property int $category_id 分类id,关联分类表article_category  id
 * @property string $title 标题
 * @property string $title_style 标题样式，简单样式
 * @property string $title_image 标题图片
 * @property string $author 作者
 * @property string $content 文章内容
 * @property string $description 描述
 * @property int $hits 点击数
 * @property int $comment_count 评论数
 * @property int $is_allow_comment 是否允许评论，1：是，0：否
 * @property int $top 赞，顶数量
 * @property int $is_show 是否展示，1：是，0否
 * @property int $bad 踩一下，不好，数量
 * @property int $is_delete 1:逻辑删除，0，正常
 * @property int $is_hot 1:是热门，0：不是
 * @property int $sort_value 排序，越小越靠前
 * @property string $keyword 关键字 以英文, 分割
 * @property string $source 来源
 * @property string $from_platform 发布平台来源
 * @property int $created_at 发布时间
 * @property int $updated_at 更新时间
 */
class YmArticle extends \yii\db\ActiveRecord
{

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%article}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'category_id', 'hits', 'comment_count', 'is_allow_comment', 'top', 'is_show', 'bad', 'is_delete', 'is_hot', 'sort_value', 'created_at', 'updated_at'], 'integer'],
            [['from_platform'], 'string'],
            [['title'], 'string', 'max' => 50],
            [['title_style', 'title_image', 'description'], 'string', 'max' => 1000],
            [['author'], 'string', 'max' => 20],
            [['keyword'], 'string', 'max' => 100],
            [['source'], 'string', 'max' => 30],
            [['content'], 'string', 'max' => 2000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => '发布人用户id',
            'category_id' => '分类id,关联分类表article_category  id',
            'title' => '标题',
            'title_style' => '标题样式，简单样式',
            'title_image' => '标题图片',
            'author' => '作者',
            'description' => '描述',
            'hits' => '点击数',
            'comment_count' => '评论数',
            'is_allow_comment' => '是否允许评论，1：是，0：否',
            'top' => '赞，顶数量',
            'is_show' => '是否展示，1：是，0否',
            'bad' => '踩一下，不好，数量',
            'is_delete' => '1:逻辑删除，0，正常',
            'is_hot' => '1:是热门，0：不是',
            'sort_value' => '排序，越小越靠前',
            'keyword' => '关键字 以英文, 分割',
            'source' => '来源',
            'from_platform' => '发布平台来源',
            'created_at' => '发布时间',
            'updated_at' => '更新时间',
            'content' => '文章内容'
        ];
    }

    /**
     * {@inheritdoc}
     * @return YmArticleQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new YmArticleQuery(get_called_class());
    }

}
