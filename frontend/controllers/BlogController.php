<?php
namespace frontend\controllers;

use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\YmArticle;
use common\models\YmArticleComment;
use frontend\models\ArticleCommentForm;
use yii\data\Pagination;
use Yii;

/**
 * BlogController implements the CRUD actions for BlogComment model.
 */
class BlogController extends Controller
{

    // 设置默认布局
    public $layout = 'newMain';

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
     * Lists all UserComment models.
     *
     * @return string
     */
    public function actionIndex()
    {

        $model = YmArticle::find()->where(['is_show' =>1 ]);
        $countModels = clone $model;
        $pages = new Pagination([
            'totalCount' => $model->count(),
            'pageSize' => 4,
        ]);

        //获取文章
        $models = $model->offset($pages->offset)->limit($pages->limit)->all();

        return $this->render('index', [
            'models' => $models,
            'pages' => $pages,
        ]);
    }

    /**
     * Displays a single UserComment model.
     * @param int $cid Cid
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {

        $comment = YmArticleComment::find()->where(['is_delete'=>0, 'article_id' => $id]);
        $countComment = clone $comment;
        $pages = new Pagination([
            'totalCount' => $comment->count(),
            'pageSize' => 5,
        ]);

        $user_comment = new ArticleCommentForm();
        if ($user_comment->load(Yii::$app->request->post()) && $user_comment->comment($id)) {
            return $this->refresh();
        }
        //获取数据
        $comments = $comment->offset($pages->offset)->limit($pages->limit)->all();

        return $this->render('view', [
            'model' => $this->findModel($id),
            'comments' => $comments,
            'pages' => $pages,
            'message' => $user_comment,
        ]);
    }

    /**
     * Finds the UserComment model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $cid Cid
     * @return UserComment the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = YmArticle::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
