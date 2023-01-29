<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>

<!doctype html>
<html class="no-js" lang="zxx">

<body>

    <!-- breadcrumbs area start -->
    <div class="breadcrumbs_aree breadcrumbs_bg mb-110">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumbs_text">
                        <h1>关于我们</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // About Us</li>
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

    <!-- about description section start -->
    <div class="about_description_section mb-105">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about_desc wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <h2>南开大学</h2>
                        <p>南开大学（Nankai University，简称南开），位于天津市，是中华人民共和国教育部直属的综合性全国重点大学，
                            是国家“双一流”“211工程”“985工程”建设高校，入选国家“珠峰计划”“强基计划”“2011计划”“111计划”、卓越法律人才教育培养计划、
                            国家建设高水平大学公派研究生项目、国家基础学科人才培养和科学研究基地、全国深化创新创业教育改革示范高校、
                            中国政府奖学金来华留学生接收院校，为国际公立大学论坛成员。现任党委书记杨庆山、校长陈雨露。校训“允公允能、日新月异”。</p><br/>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="about_desc wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <h2>互联网数据库开发</h2>
                        <p>互联网数据库开发是由南开大学计算机学院乜鹏老师开设的一门课程...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about description section end -->

    <!-- team member section start -->
    <div class="team_member_section mb-110">
        <div class="container">
            <div class="section_title text-center wow fadeInUp mb-50" data-wow-delay="0.1s" data-wow-duration="1.1s">
                <h2>团队成员</h2>
                <p>Monofilament is not a line, makes no garland.</p>
            </div>
            <div class="team_member_inner">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single_team_member wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                            <div class="team_thumb">
                                <img src="img/others/team1.png" alt="">
                                <div class="team_text">
                                    <h3>Yang Xin</h3>
                                    <h4>Team Leader</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single_team_member wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1.2s">
                            <div class="team_thumb">
                                <img src="img/others/team2.png" alt="">
                                <div class="team_text">
                                    <h3>Meng Xiaoduo</h3>
                                    <h4>Team Member</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- team member section end -->

    <!-- team division section start -->
    <div class="team_division_section mb-110">
        <div class="container">
            <div class="section_title text-center wow fadeInUp mb-50" data-wow-delay="0.1s" data-wow-duration="1.1s">
                <h2>团队分工</h2>
                <p>With all the force, is unmatched in the world; With all the wisdom, the fearless in sage.</p>
            </div>
            <div class="team_division_inner">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="about_desc wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                            <h2>Yang Xin</h2>
                            <p>杨鑫分工</p><br/>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="about_desc wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                            <h2>Meng Xiaoduo</h2>
                            <p>孟笑朵分工</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- team member section end -->

</body>

</html>
