<?php
use backend\models\User;
use backend\models\Admin;
use common\models\YmArticle;
use backend\models\UserComment;
?>

<div class="layui-col-md8">
    <div class="layui-row layui-col-space15">

        <div class="layui-col-md6">

            <div class="layui-card">

                <div class="layui-card-header">快捷方式</div>

                <div class="layui-card-body">



                    <div class="layui-carousel layadmin-carousel layadmin-shortcut">

                        <div carousel-item>

                            <ul class="layui-row layui-col-space10">

                                <li class="layui-col-xs3">

                                    <a lay-href="<?php echo \yii\helpers\Url::to(['public/console']); ?>">

                                        <i class="layui-icon layui-icon-console"></i>

                                        <cite>控制台</cite>

                                    </a>

                                </li>

                                <li class="layui-col-xs3">

                                    <a lay-href="<?php echo \yii\helpers\Url::to(['admin/index']); ?>">

                                        <i class="layui-icon layui-icon-user"></i>

                                        <cite>用户</cite>

                                    </a>

                                </li>

                                <li class="layui-col-xs3">

                                    <a lay-href="<?php echo \yii\helpers\Url::to(['ym-article/index']); ?>">

                                        <i class="layui-icon layui-icon-read"></i>

                                        <cite>文章</cite>

                                    </a>

                                </li>

                                <li class="layui-col-xs3">

                                    <a lay-href="<?php echo \yii\helpers\Url::to(['system-log/index']); ?>">

                                        <i class="layui-icon layui-icon-set"></i>

                                        <cite>日志</cite>

                                    </a>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="layui-col-md6">

            <div class="layui-card">

                <div class="layui-card-header">平台统计</div>

                <div class="layui-card-body">



                    <div class="layui-carousel layadmin-carousel layadmin-backlog">

                        <div carousel-item>

                            <ul class="layui-row layui-col-space10">

                                <li class="layui-col-xs6">

                                    <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">

                                        <h3>前台用户数量</h3>

                                        <p><cite>
                                            <?php 
                                                $frontUser = new User();
                                                $sum = $frontUser->find()->count();
                                                echo $sum;
                                            ?>
                                        </cite></p>

                                    </a>

                                </li>

                                <li class="layui-col-xs6">

                                    <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">

                                        <h3>后台用户数量</h3>

                                        <p><cite>
                                            <?php 
                                                $backUser = new Admin();
                                                $sum = $backUser->find()->count();
                                                echo $sum;
                                            ?>
                                        </cite></p>

                                    </a>

                                </li>

                                <li class="layui-col-xs6">

                                    <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">

                                        <h3>文章数量</h3>

                                        <p><cite>
                                            <?php 
                                                $article = new YmArticle();
                                                $sum = $article->find()->count();
                                                echo $sum;
                                            ?>
                                        </cite></p>

                                    </a>

                                </li>

                                <li class="layui-col-xs6">

                                    <a href="javascript:;" onclick="layer.tips('不跳转', this, {tips: 3});" class="layadmin-backlog-body">

                                        <h3>留言数量</h3>

                                        <p><cite>
                                            <?php 
                                                $comment = new UserComment();
                                                $sum = $comment->find()->count();
                                                echo $sum;
                                            ?>
                                        </cite></p>

                                    </a>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="layui-col-md12">

            <div class="layui-card">

                <div class="layui-card-header">数据概览</div>

                <div class="layui-card-body">



                    <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-dataview">

                        <div carousel-item id="LAY-index-dataview">

                            <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>

                            <div></div>

                            <div></div>

                        </div>

                    </div>



                </div>

            </div>

        </div>

    </div>
</div>
<div class="layui-col-md4">

    <div class="layui-card">

        <div class="layui-card-header">版本信息</div>

        <div class="layui-card-body layui-text">

            <table class="layui-table">

                <colgroup>

                    <col width="100">

                    <col>

                </colgroup>

                <tbody>

                <tr>

                    <td>当前版本</td>

                    <td>

                        <script type="text/html" template>

                            v{{ layui.admin.v }}

                        </script>

                    </td>

                </tr>

                <tr>

                    <td>基于框架</td>

                    <td>

                        <script type="text/html" template>

                            layui-v{{ layui.v }}

                        </script>

                    </td>

                </tr>

                <tr>

                    <td>主要特色</td>

                    <td>零门槛 / 响应式 / 清爽 / 极简</td>

                </tr>

                <tr>

                    <td>获取渠道</td>

                    <td style="padding-bottom: 0;">

                        <div class="layui-btn-container">

                            <a href="https://github.com/Yang-Nankai/developmentBigHomework" target="_blank" class="layui-btn layui-btn-danger">GitHub</a>


                        </div>

                    </td>

                </tr>

                </tbody>

            </table>

        </div>

    </div>


    <div class="layui-card">

        <div class="layui-card-header">实时监控</div>

        <div class="layui-card-body layadmin-takerates">

            <div class="layui-progress" lay-showPercent="yes">

                <h3>CPU使用率</h3>

                <div class="layui-progress-bar" lay-percent="58%"></div>

            </div>

            <div class="layui-progress" lay-showPercent="yes">

                <h3>内存占用率</h3>

                <div class="layui-progress-bar layui-bg-red" lay-percent="90%"></div>

            </div>

        </div>

    </div>


    <div class="layui-card">

        <div class="layui-card-header">

            小组成员

            <i class="layui-icon layui-icon-tips" lay-tips="要支持的噢" lay-offset="5"></i>

        </div>

        <div class="layui-card-body layui-text layadmin-text">

            <p>NKU 杨鑫 2011028 信息安全专业</p>

            <p>NKU 孟笑朵 2011370 计算机科学与技术</p>

        </div>

    </div>

</div>

<?php
$js = <<<JS
    layui.config({
        base: 'static/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'console']);
JS;
$this->registerJs($js);
