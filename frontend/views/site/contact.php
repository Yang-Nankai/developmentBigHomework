<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \frontend\models\ContactForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Contact';
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
                        <h1>联系我们</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!-- contact section start -->
    <div class="contact_page_section mb-100">
        <div class="container">
            <div class="contact_details">
                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <div class="contact_info_content">
                            <h2>联系方式</h2>
                            <div class="contact_info_details mb-45">
                                <h3>Yang Xin</h3>
                                <p>Tianjin, China</p>
                                <p><a href="tel:0123456789">0123456789</a></p>
                                <p><a href="#">2580496402@qq.com</a></p>
                                <p><a href="#">www.ylwatt.top</a></p>
                            </div>
                            <div class="contact_info_details">
                                <h3>Meng Xiaoduo</h3>
                                <p>Tianjin, China</p>
                                <p><a href="tel:0123456789">0123456789</a></p>
                                <p><a href="#">demo@example.com</a></p>
                                <p><a href="#">www.example.com</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="contact_form" data-bgimg="img/others/contact-form-bg-shape.png">
                            <h2>发送建议</h2>
                            <!-- 这里应该去天上发送表单后的动作，就是将发送的信息存入到数据库然后在后台能够显示出来 -->
                            <form id="contact-form" action="https://whizthemes.com/mail-php/other/mail.php">
                                <div class="form_input">
                                    <input name="con_name" placeholder="Name*" type="text">
                                </div>
                                <div class="form_input">
                                    <input name="con_email" placeholder="E-Mail*" type="text">
                                </div>
                                <div class="form_input">
                                    <input name="con_subject" placeholder="Subject" type="text">
                                </div>
                                <div class="form_textarea">
                                    <textarea name="con_message" placeholder="Message Hare"></textarea>
                                </div>
                                <div class="form_input_btn">
                                    <button type="submit" class="btn btn-link">send message</button>
                                </div>
                                <p class="form-message"></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact section end -->

    <!--contact map start-->
    <div class="contact_map mt-70">

    </div>
    <!--contact map end-->


</body>

</html>
