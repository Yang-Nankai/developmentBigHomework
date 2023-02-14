<?php 
use yii\widgets\ActiveForm;
use yii\helpers\Url;
?>
<div class="layui-card">
	<div class="layui-card-header">
		<fieldset class="layui-elem-field layui-field-title">
			<legend>发布新文章</legend>
		</fieldset>
	</div>
	<div class="layui-card-body">
		<form class="layui-form" action="<?php echo \yii\helpers\Url::to(['create'])?>" method="post">

			<input type="hidden" name="<?= Yii::$app->request->csrfParam; ?>" value="<?= Yii::$app->request->getCsrfToken();?>">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="title" lay-verify="required" placeholder="请输入标题" autocomplete="on" value="" id="inputTitle" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">作者</label>
				<div class="layui-input-inline">
					<input type="text" name="author" lay-verify="required" value="<?=Yii::$app->user->identity->username?>" autocomplete="on" placeholder="请输入作者" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">来源</label>
				<div class="layui-input-inline">
					<input type="text" name="source" lay-verify="required" value="原创" autocomplete="on" placeholder="请输入来源" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">关键字</label>
				<div class="layui-input-block">
					<input type="text" name="keyword" autocomplete="on"  placeholder="请输入关键字" value="" class="layui-input">
					<div class="layui-form-mid layui-word-aux">多个以英文逗号, 隔开</div>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="" class="layui-form-label">是否显示</label>
				<div class="layui-input-inline">
					<select name="is_show" lay-verify="required">
						<option value="1">显示</option>
						<option value="0">隐藏</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">允许评论</label>
				<div class="layui-input-inline">
					<select name="is_allow_comment" lay-verify="required">
						<option value="1">允许</option>
						<option value="0">不允许</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">排序值</label>
				<div class="layui-input-inline">
					<input type="text" name="sort_value" lay-verify="required|number" value="100" autocomplete="on" placeholder="请输入排序值" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">内容描述</label>
				<div class="layui-input-block">
					<textarea name="description" placeholder="请输入内容,最大长度为200字，默认截取文章正文前200字" class="layui-textarea"></textarea>
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">文章内容</label>
				<div class="layui-input-block">
					<textarea name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">发布时间</label>
				<div class="layui-input-block">
					<input style="width: 300px" type="text" name="release_time" autocomplete="off"  value="" class="layui-input my-input-datetime">
					<div class="layui-form-mid layui-word-aux"></div>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="" class="layui-form-label"></label>
				<div class="layui-input-block" style="padding: 20px 0">
					<button type="submit" lay-submit lay-filter="*" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-release"></i>发布</button>
					<a href="<?php echo \yii\helpers\Url::to(['index'])?>" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-return"></i>返回</a>
				</div>
			</div>
		</form>
	</div>
</div>
	
<?php

$js = <<<JS
    layui.use(['layer', 'form', 'jquery', 'table', 'element'],function() {
        var table = layui.table;
        var layer = layui.layer;
        
    })
JS;
$this->registerJs($js);

?>