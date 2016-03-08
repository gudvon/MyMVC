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

    public function admin_discussions(){
        $this->data['discussions'] = $this->model->getDiscussions();
    }

    public function admin_addiscus(){
        if ($_POST){
            $result = $this->model->saveDiscussion($_POST);
            if ($result){
                Session::setFlash('New discussion successfully added.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/forums/discussions');
        }
    }



















    public function user_index(){
        $this->data['forums'] = $this->model->getCategory();
    }

    public function user_general(){

    }

    public function user_discussions(){

    }

}