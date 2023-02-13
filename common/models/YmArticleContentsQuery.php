<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[YmArticleContents]].
 *
 * @see YmArticleContents
 */
class YmArticleContentsQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return YmArticleContents[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return YmArticleContents|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
