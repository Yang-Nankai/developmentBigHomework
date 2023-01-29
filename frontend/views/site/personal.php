<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var \frontend\models\ContactForm $model */

use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Personal';
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
                        <h1>个人作业</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Personal</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!-- personal area begin -->
    <div class="compare-area">
        <div class="container">
            <div class="compare-table table-responsive">
                <table class="table table-bordered table-hover mb-0">
                    <tbody>
                        <tr>
                            <th>姓名</th>
                            <td>
                                <h5 class="compare-product-name">杨鑫
                                </h5>
                            </td>
                            <td>
                                <h5 class="compare-product-name">孟笑朵
                                </h5>
                            </td>
                        </tr>
                        <tr>
                            <th>学号</th>
                            <td>2011028</td>
                            <td>2010349</td>
                        </tr>
                        <tr>
                            <th>专业</th>
                            <td>信息安全</td>
                            <td>计算机科学与技术</td>
                        </tr>
                        <tr>
                            <th>百度网盘</th>
                            <td>Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li
                                sam vocabular. Lingues differe
                                solmen in grammatica, pronunciation commun vocabules.</td>
                            <td>Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li
                                sam vocabular. Lingues differe
                                solmen in grammatica, pronunciation commun vocabules.</td>
                        </tr>
                        <tr>
                            <th>GitHub地址</th>
                            <td>
                                <h5 class="compare-product-name"><a href="https://github.com/Yang-Nankai" target="_blank">Yang-Nankai</a>
                                </h5>
                            </td>
                            <td>
                                <h5 class="compare-product-name"><a href="https://github.com/NK-MXD" target="_blank">NK-MXD</a>
                                </h5>
                            </td>
                        </tr>
                        <tr>
                            <th class="compare-column-titles">直接下载</th>
                            <td class="compare-column-productinfo">
                                <div class="compare-pdoduct-image">
                                    <a href="data/personal/作业(1910874_赵一林).zip" class="btn custom-btn md-size rounded-0" download="个人作业(2011028_杨鑫)">
                                        <span>Download</span>
                                    </a>
                                </div>
                            </td>
                            <td class="compare-column-productinfo">
                                <div class="compare-pdoduct-image">
                                    <a href="index.php" class="btn custom-btn md-size rounded-0" download="个人作业(2010349_孟笑朵)">
                                        <span>Download</span>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- personal area end -->


</body>

</html>
