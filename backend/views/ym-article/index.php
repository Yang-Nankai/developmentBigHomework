<?php

use common\models\YmArticle;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var common\models\YmArticleSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = '文章管理';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
        <div class="layui-btn-group">
            <a href="<?php echo \yii\helpers\Url::to(['create']) ?>" class="layui-btn layui-btn-sm">添加</a>
        </div>
    </div>
    <div class="layui-card-body">
        <table id="dataTable" lay-filter="dataTable"></table>
        <script type="text/html" id="toolbar">
            <a class="layui-btn layui-btn-sm" href="{{d.updateUrl}}" >编辑</a>
            <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="destroy">删除</a>
        </script>
        <script type="text/html" id="roles">
            {{# layui.each(d.roles,function(index,item){  }}
            <span class="layui-badge layui-bg-cyan">{{ item.description }}</span>
            {{# }) }}
        </script>
    </div>
</div>

<?php
$url = yii\helpers\Url::to(['ym-article/index']);
$js = <<<JS
    layui.use(['layer', 'form', 'jquery', 'table', 'element','upload'],function() {
        var table = layui.table;
        var layer = layui.layer;
        var dataTable = table.render({
            elem: '#dataTable' 
            ,url: '{$url}'
            ,height: 480 
            ,page:true
            , cols: [[
					{type:'checkbox'}
					, {field: 'id', title: 'ID', width: 40, align: 'center'}
					, {field: 'title', title: '标题', width: 310, align: 'center', templet: function (d) {
						var img = '';
						if (d.title_image) {
							img += '<img onclick="showTitleImage(\''+d.title_image+'\')" class="title-image" data-src="'+ d.title_image +'" src="<?=Yii::getAlias("@static_backend")?>/images/img-icon-16.png"> ';
						}
						return img + '<span style=\''+ d.title_style +'\'>'+ d.title +'</span>';
					}}
					, {field: 'category_name', title: '分类', width: 100, align: 'center'}
					, {field: 'nickname', title: '发布人', width: 80, align: 'center'}
					, {field: 'author', title: '作者', width: 80, align: 'center'}
					, {field: 'hits', title: '查看次数', width: 80, align: 'center'}
					// , {field: 'sort_value', title: '排序', width: 60, align: 'center'}
					, {field: 'source', title: '来源', width: 60, align: 'center'}
					, {field: 'is_show', title: '是否展示', width: 100, templet: function (d) {
						var checked = d.is_show == 1 ? 'checked' : '';
						return '<input type="checkbox" lay-filter="filter-is-show" value="1" data-row_id="'+ d.id +'" lay-skin="switch" lay-text="显示|不显示" '+ checked +' >';
					}, align: 'center'}
					, {field: 'is_allow_comment', title: '允许评论', width: 100, templet: function (d) {
						var checked = d.is_allow_comment == 1 ? 'checked' : '';
						return '<input type="checkbox" lay-filter="filter-is-allow-comment" value="1" data-row_id="'+ d.id +'" lay-skin="switch" lay-text="允许|不允许" '+ checked +' >';
						}, align: 'center'}
					, {field: 'created_at', title: '发布时间', width: 145, align: 'center', templet:function(data){
                        return layui.util.toDateString(data.create_time*1000, "yyyy-MM-dd HH:mm:ss");
                    }}
					, {field: 'updated_at', title: '更新时间', width: 145, templet:function(data){
                        return layui.util.toDateString(data.create_time*1000, "yyyy-MM-dd HH:mm:ss");
                    }, align: 'center'}
					, {fixed: 'right', title: '操作', width: 200, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
				]]
        });
        
        //监听工具条
        table.on('tool(dataTable)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent=='destroy'){
                layer.confirm("确定删除吗？",function() {
                    $.get(data.destroyUrl,function(res) {
                        layer.msg(res.msg,{time:2000},function() {
                            if (res.code==0){
                                obj.del();
                            } 
                        })  
                    })
                }) 
            } 
        });
        
        //搜索
        $("#searchBtn").click(function() {
            var data = {
                title:$("#title").val(),
                author:$("#author").val(),
				
            }
            dataTable.reload({
                where:data,
                page:{curr:1}
            })
        })
        
    })
JS;
$this->registerJs($js);

?>