<?php
namespace backend\controllers;

use backend\models\UserComment;
use Yii;
use yii\filters\AccessControl;
use yii\helpers\Url;
use yii\helpers\VarDumper;
use yii\web\NotFoundHttpException;

class CommentController extends BaseController
{
    /**
     * 用户列表
     * @return string|\yii\web\Response
     */
    public function actionIndex()
    {
        if (Yii::$app->request->isAjax){
            $comment = (new UserComment())->find();
            $count = $comment->count();
            $page = Yii::$app->request->get('page',1);
            $limit = Yii::$app->request->get('limit',10);
            $data = $comment->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            $username = Yii::$app->request->get('username');
            $email = Yii::$app->request->get('email');
            if ($username){
                $comment->where(['like','username',$username]);
            }
            if ($email){
                $comment->where(['like','email',$email]);
            }
            $data = $comment->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            foreach ($data as &$item){
                $item['updateUrl'] = Url::to(['update','cid'=>$item['cid']]);
                $item['destroyUrl'] = Url::to(['destroy','cid'=>$item['cid']]);
                $item['roles'] = Yii::$app->authManager->getRolesByUser($item['cid']);
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
     * 编辑用户
     * @param int $id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionUpdate(int $cid)
    {
        $model = UserComment::findOne($cid);
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
    public function actionDestroy(int $cid)
    {
        $model = UserComment::findOne($cid);
        if ($model === null){
            return $this->asJson(['code'=>1,'msg'=>'用户不存在']);
        }
        if ($model->delete()){
            return $this->asJson(['code'=>0,'msg'=>'删除成功']);
        }
        return $this->asJson(['code'=>1,'msg'=>'删除失败']);
    }
    
}