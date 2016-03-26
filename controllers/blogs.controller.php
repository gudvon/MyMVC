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