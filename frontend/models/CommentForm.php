<?php
namespace frontend\models;
/*

**author : yangxin 2011028
**Date : 2023/1/31
**descrption :查看评论
*/

use DateTime;
use Yii;
use yii\base\Model;
use frontend\models\UserComment;
use yii\helpers\VarDumper;
use  yii\web\Session;

/**
 * comment form
 */
class CommentForm extends Model
{

    public $content;

    const COMMENT_STATUS_DISPLAY = 1;
    const COMMENT_STATUS_NOTDISPLAY = 0;

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
    public function comment()
    {
        if (!$this->validate()) {
            return null;
        }
        $com = new UserComment();
        $com->username = Yii::$app->user->identity->username;
        $com->email = Yii::$app->user->identity->email;
        $datetime = new \DateTime();
        $com->created_at = $datetime->getTimestamp();
        $com->comment = $this->content;
        $com->status = CommentForm::COMMENT_STATUS_DISPLAY;

        return $com->save();
    }

    /**
     * 
     *
     * 
     */
    // public function leaveamessage($model)
    // {
    //     if (!$this->validate()) {
    //         return null;
    //     }
        
    //     //登录信息
    //     $session = Yii::$app->session;
    //     $session->open();
    //     if(!$session->get('us_id'))
    //     {
    //         return false;
    //     }
    //     $com=new IgArticleComments();
    //     $com->art_id=$model->art_id;
    //     //已有初始评论
    //     if(IgArticleComments::find()->count()!=0)
    //     {
    //         $com->com_id=IgArticleComments::findBySql('SELECT com_id FROM ig_article_comments order by com_id desc')->one()->com_id+1;
    //     }
    //     else
    //     {
    //         $com->com_id=1;
    //     }
    //     $com->us_id=$session->get('us_id');
    //     $com->com_username=IgUserUser::find()->where(['us_id'=>$com->us_id])->one()->us_name;
    //     $com->com_content=$this->com_content;
    //     $datetime = new \DateTime;
    //     $com->com_date=$datetime->format('Y-m-d');
    //     $com->save();

    //     $art=IgArticleArticle::find()->where(['art_id'=>$model->art_id])->one();
    //     $art->art_com_num=$art->art_com_num+1;
    //     $art->save();
    //     return true;
        
    // }

    // public function increaseview($model)
    // {
    //     $session = Yii::$app->session;
    //     $session->open();
    //     if(!$session->get('us_id'))
    //     {
    //         return false;
    //     }

    //     if(!IgUserRead::find()->where(['us_id'=>$session->get('us_id'),'art_id'=>$model->art_id]))
    //     {
    //         $IUR=new IgUserRead();
    //         $IUR->us_id=$session->get('us_id');
    //         $IUR->art_id=$model->art_id;
    //         $IUR->save();
    //     }
    //     return true;
    // }


    // public function findcomments($model)
    // {
    //     $session = Yii::$app->session;
    //     $session->open();
    //     if(!$session->get('us_id'))
    //     {
    //         return false;
    //     }
        
    // }

    
}
