<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 22.03.2016
 * Time: 13:31
 */

class BlogsController extends Controller{

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new Blog();
    }


    //........................ admin ..!!.. admin ..!!.. admin ..!!.. admin ..!!..

    public function admin_index(){
        $this->data['blogs'] = $this->model->getBlog();
    }

    public function admin_add(){
        if ($_POST){
            $result = $this->model->add_Blog($_POST);
            if ($result){
                Router::redirect('/admin/blogs');
            } else {
                Session::setFlash('Error.');
            }
        }
    }

    public function admin_edit(){
        if ($_POST){
            $id = isset($_POST['id']) ? $_POST['id'] : null;
            $result = $this->model->add_Blog($_POST, $id);
            if ($result){
                Session::setFlash('Page was saved.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/blogs');
        }
        if (isset($this->params[0])){
            $this->data['blogs'] = $this->model->getById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/blogs');
        }
    }

    public function admin_delete(){
        if (isset($this->params[0])){
            $result = $this->model->delete($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/blogs');
    }

    public function admin_blog_view(){
        if (isset($this->params[0])){
            $this->data['blogs'] = $this->model->getById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/blogs');
        }
    }

    //........................ user ..!!.. user ..!!.. user ..!!.. user ..!!..

    public function user_index(){
        $this->data['blogs'] = $this->model->getBlog();
    }

    public function user_add(){
        if ($_POST){
            $result = $this->model->add_Blog($_POST);
            if ($result){
                Router::redirect('/user/blogs');
            } else {
                Session::setFlash('Error.');
            }
        }
    }

}