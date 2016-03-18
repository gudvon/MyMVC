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


    //........................ discussions ..!!.. discussions ..!!.. discussions ..!!..

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



    public function user_index(){
        $this->data['forums'] = $this->model->getCategory();
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



    public function index(){
        $this->data['forums'] = $this->model->getCategory();
    }

    public function discussions(){
        $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        $this->data['forums'] = $this->model->getById($this->params[0]);
    }


    //........................ comments ..!!.. comments ..!!.. comments ..!!..

    public function user_comments(){
        $this->data['discussions'] = $this->model->getDiscussions($this->params[0]);
        $this->data['comments'] = $this->model->getComments($this->params[0]);


        foreach($this->data['comments'] as $page_data) {
            $page_data['user_id'] = $this->model->getUser($page_data['user_id']);
        }


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


}