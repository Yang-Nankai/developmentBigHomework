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
                    <form action="#">
                        <div class="login-form">
                            <h4 class="login-title">登录</h4>
                            <div class="row">
                                <div class="col-lg-12">
                                    <label>用户名*</label>
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="col-lg-12">
                                    <label>密码</label>
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="col-sm-8 align-self-center">
                                    <div class="check-box">
                                        <input type="checkbox" id="remember_me">
                                        <label for="remember_me">记住我</label>
                                    </div>
                                </div>
                                <div class="col-sm-4 pt-1 mt-md-0">
                                    <div class="forgotton-password_info">
                                    <?php echo Html::a('忘记密码?',['/site/request-password-reset']); ?>
                                    </div>
                                </div>
                                <div class="col-lg-12 pt-5">
                                    <button class="btn custom-btn md-size">登录</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 pt-5 pt-lg-0">
                    <form action="#">
                        <div class="login-form">
                            <h4 class="login-title">注册</h4>
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <label>用户名*</label>
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="col-md-12">
                                    <label>邮箱地址*</label>
                                    <input type="email" placeholder="Email Address">
                                </div>
                                <div class="col-md-6">
                                    <label>密码</label>
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="col-md-6">
                                    <label>确认密码</label>
                                    <input type="password" placeholder="Confirm Password">
                                </div>
                                <div class="col-12">
                                    <button class="btn custom-btn md-size">Register</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- login | register area end -->


</body>

</html>
