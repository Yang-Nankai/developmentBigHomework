<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%count_record}}".
 *
 * @property integer $id
 * @property integer $date_at
 * @property integer $count
 * @property integer $created_at
 * @property integer $updated_at
 */
class CountRecord extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%count_record}}';
    }
}
