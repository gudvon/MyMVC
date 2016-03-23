<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 05.03.2016
 * Time: 21:29
 */

class ForumsController extends Controller{

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new Forum();
    }

    public function admin_index(){
        $this->data['forums'] = $this->model->getCategory();
        $this->data['topics'] = $this->model->getTopic();
    }

    public function admin_add(){
        if ($_POST){
            $result = $this->model->saveCategory($_POST);
            if ($result){
                Session::setFlash('New category successfully added.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/forums/');
        }
        if (isset($this->params[0])){
            $this->data['topics'] = $this->model->getTopicById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/forums/');
        }
    }

    public function admin_edit(){
        if ($_POST){
            $id = isset($_POST['id']) ? $_POST['id'] : null;
            $result = $this->model->saveCategory($_POST, $id);
            if ($result){
                Session::setFlash('Page was saved.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/forums/');
        }
        if (isset($this->params[0])){
            $this->data['forum'] = $this->model->getById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/forums/');
        }
    }

    public function admin_delete(){
        if (isset($this->params[0])){
            $result = $this->model->deleteCategory($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/forums/');
    }


    //........................ topics ..!!.. topics ..!!.. topics ..!!.. topics ..!!..

    public function admin_add_topic(){
        if ($_POST){
            $result = $this->model->saveTopic($_POST);
            if ($result){
                Session::setFlash('New category successfully added.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/forums/');
        }
    }

    public function admin_edit_topic(){
        if ($_POST){
            $id = isset($_POST['id']) ? $_POST['id'] : null;
            $result = $this->model->saveTopic($_POST, $id);
            if ($result){
                Session::setFlash('Page was saved.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/forums/');
        }
        if (isset($this->params[0])){
            $this->data['topics'] = $this->model->getTopicById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/forums/');
        }
    }

    public function admin_delete_topic(){
        if (isset($this->params[0])){
            $result = $this->model->deleteTopic($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/forums/');
    }


    //........................ discussions ..!!.. discussions ..!!.. discussions ..!!.. discussions ..!!..

    public function admin_discussions(){
        $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        $this->data['forums'] = $this->model->getById($this->params[0]);
        Session::set('category_id', $this->params[0]);
    }

    public function admin_add_discussions(){
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->saveDiscussion($_POST, $id);
            if ($result) {
                Session::setFlash("New discussion successfully added.");
                Router::redirect('/admin/forums/discussions/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }
    }

    public function admin_delete_discussions(){
        if (isset($this->params[0])){
            $result = $this->model->deleteDiscussions($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/forums/discussions/'.Session::get('category_id'));
    }

    public function admin_edit_discussions (){
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->editDiscussion($_POST, $id);
            if ($result){
                Session::setFlash('Discussion was saved.');
            } else {
                Session::setFlash('Error.');
            }
            $this->data['forums'] = $this->model->getById($this->params[0]);
            $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        }
        if (isset($this->params[0])){
            $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);

        } else {
            Session::setFlash('Wrong page id.');
        }
    }

    public function user_index(){
        $this->data['forums'] = $this->model->getCategory();
        $this->data['topics'] = $this->model->getTopic();
    }

    public function user_discussions(){
        $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        $this->data['forums'] = $this->model->getById($this->params[0]);
        Session::set('discussions_id', $this->model->getDiscussions($this->params[0]));
    }

    public function user_add_discussions(){
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->saveDiscussion($_POST, $id);
            if ($result) {
                Session::setFlash("New discussion successfully added.");
                Router::redirect('/user/forums/discussions/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }
    }


    //........................ default ..!!.. default ..!!.. default ..!!.. default ..!!..

    public function index(){
        $this->data['forums'] = $this->model->getCategory();
        $this->data['topics'] = $this->model->getTopic();
    }

    public function discussions(){
        $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        $this->data['forums'] = $this->model->getById($this->params[0]);
    }

    public function comments(){
        $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);
        $this->data['comments'] = $this->model->getComments($this->params[0]);
    }


    //........................ comments ..!!.. comments ..!!.. comments ..!!.. comments ..!!..

    public function admin_comments(){
        $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);
        $this->data['comments'] = $this->model->getComments($this->params[0]);
        Session::set('comments_id', $this->params[0]);
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->addComments($_POST, $id);
            if ($result) {
                Router::redirect('/admin/forums/comments/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }
    }

    public function admin_edit_comments (){
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->editComments($_POST, $id);
            if ($result){
                Session::setFlash('Comment was saved.');
            } else {
                Session::setFlash('Error.');
            }
            $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);
            $this->data['comments'] = $this->model->getComments($this->params[0]);
        }
        if (isset($this->params[0])){
            $this->data['comments'] = $this->model->getIdComments($this->params[0]);

        } else {
            Session::setFlash('Wrong page id.');
        }
    }

    public function admin_delete_comments(){
        if (isset($this->params[0])){
            $result = $this->model->deleteComments($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/forums/comments/'.Session::get('comments_id'));
    }



    public function user_comments(){
        $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);
        $this->data['comments'] = $this->model->getComments($this->params[0]);
        Session::set('discussions_id', $this->params[0]);
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->addComments($_POST, $id);
            if ($result) {
                Router::redirect('/user/forums/comments/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }
    }

    public function user_edit_comments (){
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->editComments($_POST, $id);
            if ($result){
                Session::setFlash('Comment was saved.');
            } else {
                Session::setFlash('Error.');
            }
            $this->data['discussions'] = $this->model->getDiscussionsId($this->params[0]);
            $this->data['comments'] = $this->model->getComments($this->params[0]);
        }
        if (isset($this->params[0])){
            $this->data['comments'] = $this->model->getIdComments($this->params[0]);

        } else {
            Session::setFlash('Wrong page id.');
        }
    }

    public function user_delete_comments(){
        if (isset($this->params[0])){
            $result = $this->model->deleteComments($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/user/forums/comments/'.Session::get('discussions_id'));
    }

}