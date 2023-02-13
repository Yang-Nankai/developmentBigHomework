<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[YmArticleCategory]].
 *
 * @see YmArticleCategory
 */
class YmArticleCategoryQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return YmArticleCategory[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return YmArticleCategory|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
