<div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
        <div class="layui-btn-group">
            <a id="searchBtn" class="layui-btn layui-btn-sm">搜索</a>
        </div>
        <div class="layui-form">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" id="username" placeholder="请输入用户名" class="layui-input">
                </div>
                <div class="layui-input-inline">
                    <input type="text" id="route" placeholder="请输入路由" class="layui-input">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-card-body">
        <table id="dataTable" lay-filter="dataTable"></table>
        <script type="text/html" id="toolbar">
            <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="destroy">删除</a>
        </script>
    </div>
</div>

<?php
$url = yii\helpers\Url::to(['system-log/index']);
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
                ,{field: 'id', title: 'ID', width: 80} 
                ,{field: 'username', title: '用户名', width: 100}
                ,{field: 'user_id', title: '用户序号'}
                ,{field: 'title', title: '网页标题'} 
                ,{field: 'ip', title: 'IP地址'}
                ,{field: 'route', title: '路由地址'}
                ,{field: 'url', title: 'URL地址'}
                ,{field: 'params', title: '参数'}
                ,{field: 'request_method', title: '请求方法'}
                ,{field: 'created_at', title: '创建时间', templet:function(data){
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
                route:$("#route").val(),
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
