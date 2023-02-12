<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%ym_article_category}}".
 *
 * @property int $id
 * @property string $category_name
 * @property int $status 状态，0：正常，1：禁用
 * @property int $parent_id
 * @property string $parents 所有的父级ID，包含自身
 * @property int $sort_value 排序值，升序
 * @property int $created_at 创建时间，时间戳
 * @property int $updated_at 更新时间，时间戳
 */
class YmArticleCategory extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%ym_article_category}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['status', 'parent_id', 'sort_value', 'created_at', 'updated_at'], 'integer'],
            [['category_name'], 'string', 'max' => 30],
            [['parents'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'category_name' => 'Category Name',
            'status' => '状态，0：正常，1：禁用',
            'parent_id' => 'Parent ID',
            'parents' => '所有的父级ID，包含自身',
            'sort_value' => '排序值，升序',
            'created_at' => '创建时间，时间戳',
            'updated_at' => '更新时间，时间戳',
        ];
    }

    /**
     * {@inheritdoc}
     * @return YmArticleCategoryQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new YmArticleCategoryQuery(get_called_class());
    }
}
