<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \frontend\models\PasswordResetRequestForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

$this->title = 'Forget Password';
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
                        <h1>忘记密码</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // ForgetPassword</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!-- breadcrumbs area end -->
    <!-- forgetpassword area begin -->
    <div class="forget-password-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <form action="#">
                        <div class="forget-form">
                            <h4 class="forget-title">忘记密码</h4>
                            <div class="row">
                                <div class="col-lg-12">
                                    <label>邮箱*</label>
                                    <input type="text" placeholder="Username">
                                    <button class="btn custom-btn md-size">发送验证码</button>
                                </div>
                                <div class="col-lg-12">
                                    <label>验证码*</label>
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="col-lg-12">
                                    <label>密码</label>
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="col-lg-12">
                                    <label>重复密码</label>
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="col-sm-4 pt-1 mt-md-0">
                                    <div class="return-login">
                                    已有账户?<?php echo Html::a('登录',['/site/login']); ?>
                                    </div>
                                </div>
                                <div class="col-lg-12 pt-5">
                                    <button class="btn custom-btn md-size">确认</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- forget password area end -->


</body>

</html>

<!-- 

<div class="site-request-password-reset">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out your email. A link to reset password will be sent there.</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'request-password-reset-form']); ?>

                <?= $form->field($model, 'email')->textInput(['autofocus' => true]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Send', ['class' => 'btn btn-primary']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div> -->
