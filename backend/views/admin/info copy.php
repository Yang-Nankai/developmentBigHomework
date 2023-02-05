<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">设置我的资料</div>
                <div class="layui-card-body" pad15>
                    <form class="layui-form" action="<?php echo \yii\helpers\Url::to(['info','id'=>$model->id])?>" method="post">
                        <input type="hidden" name="<?= Yii::$app->request->csrfParam; ?>" value="<?= Yii::$app->request->getCsrfToken();?>">
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">我的角色</label>
                            <div class="layui-input-inline">
                                <select name="role" lay-verify="">
                                    <option value="1" selected>超级管理员</option>
                                    <option value="2" disabled>普通管理员</option>
                                    <option value="3" disabled>审核员</option>
                                    <option value="4" disabled>编辑人员</option>
                                </select>
                            </div>
                            <div class="layui-form-mid layui-word-aux">当前角色不可更改为其它角色</div>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="username" value="<?php echo $model->username; ?>" readonly class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">不可修改。一般用于后台登入名</div>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">昵称</label>
                            <div class="layui-input-inline">
                                <input type="text" name="nickname" value="<?php echo $model->nickname; ?>"
                                    lay-verify="username" autocomplete="off" placeholder="请输入昵称" class="layui-input"
                                    maxlength="16">
                            </div>
                            <?php if ($model->hasErrors('nickname')): ?>
                            <div class="layui-form-mid layui-word-aux">
                                <?php echo $model->getFirstError('nickname'); ?>
                            </div>
                            <?php endif;?>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                                <input type="radio" name="sex" value="男" title="男" checked>
                                <input type="radio" name="sex" value="女" title="女">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">头像</label>
                            <div class="layui-input-inline">
                                <input name="avatar" id="LAY_avatarSrc" placeholder="图片地址"
                                    value="<?php echo $model->avatar; ?>" class="layui-input">
                            </div>
                            <?php if ($model->hasErrors('avatar')): ?>
                            <div class="layui-form-mid layui-word-aux">
                                <?php echo $model->getFirstError('avatar'); ?>
                            </div>
                            <?php endif;?>
                            <div class="layui-input-inline layui-btn-container" style="width: auto;">
                                <button type="button" class="layui-btn layui-btn-primary" id="LAY_avatarUpload">
                                    <i class="layui-icon">&#xe67c;</i>上传图片
                                </button>
                                <button class="layui-btn layui-btn-primary"
                                    layadmin-event="avartatPreview">查看图片</button>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                                <input type="text" name="email" value="<?php echo $model->email; ?>" lay-verify="email"
                                    autocomplete="off" class="layui-input">
                            </div>
                            <?php if ($model->hasErrors('email')): ?>
                            <div class="layui-form-mid layui-word-aux">
                                <?php echo $model->getFirstError('email'); ?>
                            </div>
                            <?php endif;?>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label for="" class="layui-form-label">个性签名</label>
                            <div class="layui-input-block">
                                <textarea name="signature" placeholder="请输入个性签名..."
                                    class="layui-textarea"><?php echo $model->signature;?></textarea>
                            </div>
                            <?php if ($model->hasErrors('signature')): ?>
                            <div class="layui-form-mid layui-word-aux">
                                <?php echo $model->getFirstError('signature'); ?>
                            </div>
                            <?php endif;?>
                        </div>
                        <div class="layui-form-item">
                            <label for="" class="layui-form-label"></label>
                            <div class="layui-input-block">
                                <button class="layui-btn" type="submit" lay-submit lay-filter="*">确认修改</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重新填写</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
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