<div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
        <h2>更新文章</h2>
    </div>
    <div class="layui-card-body">
        <form class="layui-form" action="<?php echo \yii\helpers\Url::to(['update','id'=>$model->id])?>" method="post">
            <input type="hidden" name="<?= Yii::$app->request->csrfParam; ?>" value="<?= Yii::$app->request->getCsrfToken();?>">
            <div class="layui-form-item">
                <label for="" class="layui-form-label">标题</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->title; ?>" name="title" placeholder="请输入标题" class="layui-input" maxlength="100">
                </div>
                <?php if ($model->hasErrors('title')): ?>
                <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('title'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">作者</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->author; ?>" name="author" placeholder="请输入作者" class="layui-input" maxlength="16" readonly="true">
                </div>
                <?php if ($model->hasErrors('author')): ?>
                <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('author'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">来源</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->source; ?>" name="source" placeholder="请输入来源" class="layui-input" maxlength="16">
                </div>
                <?php if ($model->hasErrors('source')): ?>
                <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('source'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">关键字</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->keyword; ?>" name="keyword" placeholder="请输入关键字" class="layui-input">
                    <div class="layui-form-mid layui-word-aux">多个以英文逗号, 隔开</div>
                </div>
                <?php if ($model->hasErrors('keyword')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('keyword'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">是否显示</label>
                <div class="layui-input-inline">
                    <select name="is_show" lay-verify="required" value="<?php echo $model->is_show; ?>">
                        <option value="0">隐藏</option>
                        <option value="1">展示</option>
                    </select>
                </div>
                    <?php if ($model->hasErrors('is_show')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('is_show'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">允许评论</label>
                <div class="layui-input-inline">
                    <select name="is_allow_comment" lay-verify="required" value="<?php echo $model->is_allow_comment; ?>">
                        <option value="0">不允许</option>
                        <option value="1">允许</option>
                    </select>
                </div>
                    <?php if ($model->hasErrors('is_allow_comment')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('is_allow_comment'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">排序值</label>
                <div class="layui-input-inline">
                    <input type="text" value="<?php echo $model->sort_value; ?>" name="sort_value" placeholder="请输入排序值" class="layui-input" maxlength="16" readonly="true">
                </div>
                <?php if ($model->hasErrors('sort_value')): ?>
                <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('sort_value'); ?></div>
                <?php endif;?>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">描述</label>
                <div class="layui-input-inline">
                    <textarea name="description" id="editor"><?php echo $model->description; ?></textarea>
                </div>
                <?php if ($model->hasErrors('description')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('description'); ?></div>
                <?php endif;?>
            </div>

            <div class="layui-form-item">
                <label for="" class="layui-form-label">文章内容</label>
                <div class="layui-input-inline">
                    <textarea name="content" id="editor"><?php echo $model->content; ?></textarea>
                </div>
                <?php if ($model->hasErrors('content')): ?>
                    <div class="layui-form-mid layui-word-aux"><?php echo $model->getFirstError('content'); ?></div>
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
