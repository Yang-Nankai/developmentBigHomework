<?php
namespace backend\controllers;

use backend\models\SystemLog;
use Yii;
use yii\filters\AccessControl;
use yii\helpers\Url;
use yii\helpers\VarDumper;
use yii\web\NotFoundHttpException;

class SystemLogController extends BaseController
{
    /**
     * 用户列表
     * @return string|\yii\web\Response
     */
    public function actionIndex()
    {
        if (Yii::$app->request->isAjax){
            $systemLog = (new SystemLog())->find();
            $count = $systemLog->count();
            $page = Yii::$app->request->get('page',1);
            $limit = Yii::$app->request->get('limit',10);
            $data = $systemLog->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            $username = Yii::$app->request->get('username');
            $route = Yii::$app->request->get('route');
            if ($username){
                $systemLog->where(['like','username',$username]);
            }
            if ($route){
                $systemLog->where(['like','route',$route]);
            }
            $data = $systemLog->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            foreach ($data as &$item){
                $item['destroyUrl'] = Url::to(['destroy','id'=>$item['id']]);
                $item['roles'] = Yii::$app->authManager->getRolesByUser($item['id']);
            }
            return $this->asJson([
                'code' => 0,
                'msg' => '请求成功',
                'count' => $count,
                'data' => $data
            ]);
        }
        return $this->render('index');
    }

    /**
     * 删除用户
     * @param int $id
     * @return \yii\web\Response
     * @throws \Throwable
     * @throws \yii\db\StaleObjectException
     */
    public function actionDestroy(int $id)
    {
        $model = SystemLog::findOne($id);
        if ($model === null){
            return $this->asJson(['code'=>1,'msg'=>'日志不存在']);
        }
        if ($model->delete()){
            return $this->asJson(['code'=>0,'msg'=>'删除成功']);
        }
        return $this->asJson(['code'=>1,'msg'=>'删除失败']);
    }
    
}