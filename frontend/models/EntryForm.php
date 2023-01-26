<?php

/**
 * This is for test!
 * 
 */

namespace app\models;

use Yii;
use yii\base\Model;

class EntryForm extends Model
{
    public $name;
    public $email;

    public function rules()
    {
        return [
            [['name', 'email'], 'required'],
            ['email', 'email'],
        ];
    }
}

// $model = new EntryForm();
// $model->name = 'Qiang';
// $model->email = 'bad';
// if ($model->validate()) {
//     // 验证成功！
//     echo "yes!!!!<\br>";
// } else {
//     echo "no!!!!!<\br>";
//     // 失败！
//     $model->getErrors(); //获取错误详情
// }