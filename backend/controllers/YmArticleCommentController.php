<?php

namespace backend\controllers;

use common\models\YmArticleComment;
use common\models\YmArticleCommentSeach;
use yii\web\Controller;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Yii;
use yii\helpers\VarDumper;

/**
 * YmArticleCommentController implements the CRUD actions for YmArticleComment model.
 */
class YmArticleCommentController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all YmArticleComment models.
     *
     * @return string
     */
    public function actionIndex()
    {
        if (Yii::$app->request->isAjax){
            $articleComment = (new YmArticleComment())->find();
            // VarDumper::dump($articleComment);
            $count = $articleComment->count();
            $page = Yii::$app->request->get('page',1);
            $limit = Yii::$app->request->get('limit',10);
            $data = $articleComment->offset(($page-1)*$limit)->limit($limit)->orderBy('created_at desc')->asArray()->all();
            foreach ($data as &$item){
                $item['updateUrl'] = Url::to(['update','id'=>$item['id']]);
                $item['destroyUrl'] = Url::to(['destroy','id'=>$item['id']]);
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
     * Updates an existing YmArticleComment model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = YmArticleComment::findOne($id);
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
     * 删除评论
     * @param int $id
     * @return \yii\web\Response
     * @throws \Throwable
     * @throws \yii\db\StaleObjectException
     */
    public function actionDestroy(int $id)
    {
        $model = YmArticleComment::findOne($id);
        if ($model === null){
            return $this->asJson(['code'=>1,'msg'=>'评论不存在']);
        }
        if ($model->delete()){
            return $this->asJson(['code'=>0,'msg'=>'删除成功']);
        }
        return $this->asJson(['code'=>1,'msg'=>'删除失败']);
    }
}
