<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \common\models\LoginForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

$this->title = 'Login-Register';
$this->params['breadcrumbs'][] = $this->title;
?>
<!doctype html>
<html class="no-js" lang="zxx">
<body>

    <!-- breadcrumbs area start -->
    <div class="breadcrumbs_aree breadcrumbs_bg mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumbs_text">
                        <h1>登录 | 注册</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Login | Register</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!-- login | register area begin -->
    <div class="login-register-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <?php $form = ActiveForm::begin([
                        'options' => [
                            'class'=>'login-form'
                        ]
                    ]); ?>
                    <h4 class="login-title">登录</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <?= $form->field($model, 'username')->label('用户名*')->textInput(['autofocus' => true]) ?>
                        </div>
                        <div class="col-lg-12">
                            <?= $form->field($model, 'password')->label('密码*')->passwordInput() ?>
                        </div>
                        <div class="col-sm-8 align-self-center">
                            <div class="check-box">
                                <?= $form->field($model, 'rememberMe')->label('记住我')->checkbox() ?>
                            </div>
                        </div>
                        <div class="col-sm-4 pt-1 mt-md-0">
                            <div class="forgotton-password_info">
                                <?php echo Html::a('忘记密码?',['/site/request-password-reset']); ?>
                            </div>
                        </div>
                        <div class="col-lg-12 pt-5">
                            <?= Html::submitButton('登录', ['class' => 'btn custom-btn md-size', 'name' => 'login-button']) ?>
                        </div>
                    </div>
                    <?php ActiveForm::end(); ?>
                </div>
                <div class="col-lg-6 pt-5 pt-lg-0">
                    <?php $form = ActiveForm::begin([
                        'options' => [
                            'class'=>'login-form'
                        ]
                    ]); ?>
                    <h4 class="login-title">注册</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <?= $form->field($model, 're_username')->label('用户名*')->textInput() ?>
                        </div>
                        <div class="col-lg-12">
                            <?= $form->field($model, 're_email')->label('邮箱地址*')->textInput() ?>
                        </div>
                        <div class="col-lg-12">
                            <?= $form->field($model, 're_password')->label('密码')->passwordInput() ?>
                        </div>
                        <div class="col-lg-12">
                            <?= $form->field($model, 're_password_re')->label('确认密码')->passwordInput() ?>
                        </div>
                        <div class="col-lg-12 pt-5">
                            <?= Html::submitButton('注册', ['class' => 'btn custom-btn md-size', 'name' => 'login-button']) ?>
                        </div>
                    </div>
                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </div>
    <!-- login | register area end -->


</body>

</html>
