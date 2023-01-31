<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

/**
 * Login form
 */
class LoginForm extends Model
{
    /* login */
    public $username;
    public $password;
    public $rememberMe = true;
    
    /* register */
    public $re_username;
    public $re_email;
    public $re_password;
    public $re_password_re;

    private $_user;


    /**
     * {@inheritdoc}
     */
    public function rules()
    {
            // return [
            //     /* register */
            //     // re_username and re_email and re_password and re_password_re are both required
            //     [['re_username', 're_email', 're_password', 're_password_re'], 'required'],
            //     // re_password is validated by validatePassword()
            //     ['re_password', 'validatePassword'],
            //     // re_password_re is validated by validatePassword()
            //     ['re_password_re', 'validatePassword'],
            //     // re_email is validated by email
            //     ['re_email', 'email'],
            // ];
        return [
            // username and password are both required
            [['username', 'password'], 'required'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return bool whether the user is logged in successfully
     */
    public function login()
    {
        if ($this->validate()) {
            return Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600 * 24 * 30 : 0);
        }
        
        return false;
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    protected function getUser()
    {
        if ($this->_user === null) {
            $this->_user = User::findByUsername($this->username);
        }

        return $this->_user;
    }
}
