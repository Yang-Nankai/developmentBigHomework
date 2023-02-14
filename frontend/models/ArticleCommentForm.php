<?php
namespace frontend\models;
/*

**author : yangxin 2011028
**Date : 2023/1/31
**descrption :查看评论
*/

use common\models\YmArticleComment;
use DateTime;
use Yii;
use yii\base\Model;
use frontend\models\UserComment;
use yii\helpers\VarDumper;
use  yii\web\Session;

/**
 * comment form
 */
class ArticleCommentForm extends Model
{

    public $content;

    const COMMENT_STATUS_DELETE = 1;
    const COMMENT_STATUS_NODELETE = 0;

        /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            ['content', 'required'],
            ['content', 'string', 'max' => 200],
        ];
    }

    /**
     * comments
     */
    public function comment($article_id)
    {
        if (!$this->validate()) {
            return null;
        }
        $com = new YmArticleComment();
        $com->username = Yii::$app->user->identity->username;
        $com->article_id = $article_id;
        $com->email = Yii::$app->user->identity->email;
        $com->ip = Yii::$app->getRequest()->getUserIP();
        $datetime = new \DateTime();
        $com->created_at = $datetime->getTimestamp();
        $com->content = $this->content;
        $com->is_delete = ArticleCommentForm::COMMENT_STATUS_NODELETE;

        return $com->save();
    }
}
