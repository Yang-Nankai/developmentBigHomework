<?php

namespace backend\models;
use Yii;
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\AttributeBehavior;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;


/**
 * This is the model class for table "{{%system_log}}".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $username
 * @property string $ip
 * @property string $request_method
 * @property string $params
 * @property string $route
 * @property string $url
 * @property integer $created_at
 */
class SystemLog extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%ym_system_log}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'created_at'], 'integer'],
            [['username', 'params', 'request_method', 'route'], 'string'],
            [['url'], 'string', 'max' => 200],
            [['ip'], 'string', 'max' => 15],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '序号',
            'user_id' => '用户序号',
            'username' => '用户名',
            'params' => '参数',
            'request_method' => '请求方法',
            'ip' => 'IP地址',
            'route' => '路由',
            'url' => 'URL地址',
            'created_at' => '创建时间',
        ];
    }
}
