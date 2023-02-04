<div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
        <h2>更新评论</h2>
    </div>
    <div class="layui-card-body">
        <form class="layui-form" action="<?php echo \yii\helpers\Url::to(['update','cid'=>$model->cid])?>" method="post">
            <input type="hidden" name="<?= Yii::$app->request->csrfParam; ?>" value="<?= Yii::$app->request->getCsrfToken();?>">
            <div class="layui-form-item">
                <label for="" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->username; ?>" name="username" placeholder="请输入用户名" class="layui-input" maxlength="16" readonly="true">
                </div>
                <?php if ($model->hasErrors('username')): ?>
                <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('username'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input type="email" value="<?php echo $model->email; ?>" name="email" placeholder="请输入邮箱" class="layui-input" readonly="true">
                </div>
                <?php if ($model->hasErrors('email')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('email'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">状态</label>
                <div class="layui-input-inline">
                    <select name="status" lay-verify="required" value="<?php echo $model->status; ?>">
                        <option value="0">隐藏</option>
                        <option value="1">展示</option>
                    </select>
                </div>
                    <?php if ($model->hasErrors('status')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('status'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">内容</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->comment; ?>" name="comment" placeholder="请输入评论" class="layui-input">
                </div>
                <?php if ($model->hasErrors('comment')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('comment'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label"></label>
                <div class="layui-input-block">
                    <button type="submit" lay-submit lay-filter="*" class="layui-btn layui-btn-sm">确定</button>
                    <a href="<?php echo \yii\helpers\Url::to(['index'])?>" class="layui-btn layui-btn-sm">返回</a>
                </div>
            </div>
        </form>
    </div>
</div>

<?php

$js = <<<JS
    layui.use(['layer', 'form', 'jquery', 'table', 'element','upload'],function() {
        var table = layui.table;
        var layer = layui.layer;
        
    })
JS;
$this->registerJs($js);

?>
