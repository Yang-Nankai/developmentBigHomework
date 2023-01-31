<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \frontend\models\ContactForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Team';
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
                        <h1>团队作业</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Team</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->



    <!-- about video section start -->
    <div class="about_video-section wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
        <div class="container">
            <div class="section_title text-center wow fadeInUp mb-50" data-wow-delay="0.1s" data-wow-duration="1.1s">
                <h2>视频讲解</h2>
                <p>Video explanation.</p>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="about_video_thumb">
                        <img src="img/bg/about-bg.png" alt="">
                        <div class="video_paly_icon">
                            <a class="video_popup" href="https://www.youtube.com/watch?v=lDxkkAe3DTQ"><img
                                    src="img/others/video-play.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about video section end -->

    <!-- team area begin -->
    <div class="account-page-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <ul class="nav myaccount-tab-trigger" id="account-page-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="account-dashboard-tab" data-bs-toggle="tab"
                                href="#account-dashboard" role="tab" aria-controls="account-dashboard"
                                aria-selected="true">团队介绍</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="account-orders-tab" data-bs-toggle="tab" href="#account-orders"
                                role="tab" aria-controls="account-orders" aria-selected="false">团队作业</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-9">
                    <div class="tab-content myaccount-tab-content" id="account-page-tab-content">
                        <div class="tab-pane fade show active" id="account-dashboard" role="tabpanel"
                            aria-labelledby="account-dashboard-tab">
                            <div class="myaccount-dashboard">
                            <h4 class="small-title">我猜你不队</h4>
                                <p>From your account dashboard you can view your recent orders, manage your shipping and
                                    billing addresses and.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-orders" role="tabpanel"
                            aria-labelledby="account-orders-tab">
                            <div class="myaccount-orders">
                                <h4 class="small-title">作业清单</h4>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover">
                                        <tbody>
                                            <tr>
                                                <th>文档</th>
                                                <th>日期</th>
                                                <th>作者</th>
                                                <th></th>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_部署文档(2011028_2010349).pdf</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_需求文档(2011028_2010349).pdf</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_实现文档(2011028_2010349).pdf</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_设计文档(2011028_2010349).pdf</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_用户手册(2011028_2010349).pdf</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_项目展示(2011028_2010349).pptx</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#"
                                                        class="btn btn-secondary btn-primary-hover"><span>View</span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>我猜你不队_团队作业(2011028_2010349).zip</td>
                                                <td>Mar 27, 2019</td>
                                                <td>杨鑫、孟笑朵</td>
                                                <td><a href="#" download="我猜你不队_团队作业(2011028_2010349).zip"
                                                        class="btn btn-secondary btn-primary-hover"><span>Download</span></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- team area end -->

</body>

</html>
