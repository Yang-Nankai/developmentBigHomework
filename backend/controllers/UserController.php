<?php
namespace backend\controllers;

use backend\models\User;
use Yii;
use yii\filters\AccessControl;
use yii\helpers\Url;
use yii\helpers\VarDumper;
use yii\web\NotFoundHttpException;

class UserController extends BaseController
{
    /**
     * 用户列表
     * @return string|\yii\web\Response
     */
    public function actionIndex()
    {
        if (Yii::$app->request->isAjax){
            $user = (new User())->find();
            $count = $user->count();
            $page = Yii::$app->request->get('page',1);
            $limit = Yii::$app->request->get('limit',10);
            $data = $user->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            $username = Yii::$app->request->get('username');
            $email = Yii::$app->request->get('email');
            if ($username){
                $user->where(['like','username',$username]);
            }
            if ($email){
                $user->where(['like','email',$email]);
            }
            $data = $user->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            foreach ($data as &$item){
                $item['updateUrl'] = Url::to(['update','id'=>$item['id']]);
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
     * 添加用户
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new User();
        if (Yii::$app->request->isPost){
            if ($model->load(Yii::$app->request->post(),'')&&$model->save()){
                Yii::$app->session->setFlash('info','添加成功');
                return $this->redirect(['index']);
            }
        }
        return $this->render('create',['model'=>$model]);
    }

    /**
     * 编辑用户
     * @param int $id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionUpdate(int $id)
    {
        $model = User::findOne($id);
        if ($model === null){
            throw new NotFoundHttpException('数据不存在');
        }
        if (Yii::$app->request->isPost){
            if ($model->load(Yii::$app->request->post(),'')&&$model->save()){
                Yii::$app->session->setFlash('info','更新成功');
                return $this->redirect(['index']);
            }
        }
        return $this->render('update',['model'=>$model]);
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
        $model = User::findOne($id);
        if ($model === null){
            return $this->asJson(['code'=>1,'msg'=>'用户不存在']);
        }
        if ($model->delete()){
            return $this->asJson(['code'=>0,'msg'=>'删除成功']);
        }
        return $this->asJson(['code'=>1,'msg'=>'删除失败']);
    }
    
}