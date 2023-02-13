<?php

use common\models\YmArticleComment;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\widgets\ListView;

/** @var yii\web\View $this */
/** @var common\models\YmArticleCommentSeach $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = '文章评论';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
        <div class="layui-btn-group">
            <a href="<?php echo \yii\helpers\Url::to(['create']) ?>" class="layui-btn layui-btn-sm">添加</a>
            <a id="searchBtn" class="layui-btn layui-btn-sm">搜索</a>
        </div>
        <div class="layui-form">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" id="username" placeholder="请输入用户名" class="layui-input">
                </div>
                <div class="layui-input-inline">
                    <input type="text" id="email" placeholder="请输入邮箱" class="layui-input">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-card-body">
        <table id="dataTable" lay-filter="dataTable"></table>
        <script type="text/html" id="toolbar">
            <a class="layui-btn layui-btn-sm" href="{{d.updateUrl}}" >编辑</a>
            <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="destroy">删除</a>
        </script>
    </div>
</div>

<?php
$url = yii\helpers\Url::to(['ym-article-comment/index']);
$js = <<<JS
    layui.use(['layer', 'form', 'jquery', 'table', 'element','upload'],function() {
        var table = layui.table;
        var layer = layui.layer;
        var dataTable = table.render({
            elem: '#dataTable' 
            ,url: '{$url}'
            ,height: 480 
            ,page:true
            ,cols: [[ 
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'id', title: '序号', sort: true, width: 80} 
                ,{field: 'article_id', title: '文章ID', width: 80}
                ,{field: 'nickname', title: '用户名'} 
                ,{field: 'reply_comment_ids', title: '评论ID'}
                ,{field: 'reply_comment_id', title: '状态'}
                ,{field: 'avatar', title: '状态'}
                ,{field: 'ip', title: '评论IP'}
                ,{field: 'content', title: '评论内容'}
                ,{field: 'is_delete', title: '状态'}
                ,{field: 'is_read', title: '状态'}
                ,{field: 'created_at', sort: true, title: '创建时间', templet:function(data){
                        return layui.util.toDateString(data.create_time*1000, "yyyy-MM-dd HH:mm:ss");
                    }
                }
                ,{field: 'updated_at', sort: true, title: '最后更新', templet:function(data){
                        return layui.util.toDateString(data.create_time*1000, "yyyy-MM-dd HH:mm:ss");
                    }
                }
                ,{fixed: 'right', title:'操作',toolbar: '#toolbar', width:220}
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
                username:$("#username").val(),
                email:$("#email").val(),
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
