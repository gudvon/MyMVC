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
        $this->data['categories'] = $this->model->getCategories();
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
        $this->data['categories'] = $this->model->getCategories();
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
            Session::set('blog_id',$this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/admin/blogs');
        }
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->addComments($_POST, $id);
            if ($result) {
                Router::redirect('/admin/blogs/blog_view/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }

    }

    public function admin_search(){
        if (!empty($_POST['search'])){
            $result = $this->model->search($_POST['search']);
            if ($result) {
                $this->data['search'] = $result;
            } else {
                Session::setFlash("Error search");
            }
        }
    }

    public function admin_edit_comments(){
        if (isset($this->params[0])){
            $this->data['blogs_comments'] = $this->model->getCommentsEdit($this->params[0]);
        }
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->editComments($_POST, $id);
            if ($result){
                Router::redirect('/admin/blogs/blog_view/'.Session::get('blog_id'));
            } else {
                Session::setFlash('Error.');
            }
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
        Router::redirect('/admin/blogs/blog_view/'.Session::get('blog_id'));
    }

    public function admin_pages(){
        if (isset($this->params[0])) {
            $this->data['blogs'] = $this->model->getPageBlog($this->params[0]);
        } else {
            Router::redirect('/admin/blogs');
        }
    }

    public function admin_categories(){
        $this->data['categories'] = $this->model->getCategories();
        if ($_POST){
            $result = $this->model->add_Category($_POST);
            if ($result){
                Router::redirect('/admin/blogs/categories');
            } else {
                Session::setFlash('Error.');
            }
        }
    }

    public function admin_delete_categories (){
        if (isset($this->params[0])){
            $result = $this->model->delete_Category($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/admin/blogs/categories');
    }

    public function admin_category(){
        if (isset($this->params[0])) {
            $this->data['category'] = $this->model->getCategory($this->params[0]);
            $this->data['one_category'] = $this->model->getOneCategories($this->params[0]);
        } else {
            Router::redirect('/admin/blogs');
        }
    }


    //........................ user ..!!.. user ..!!.. user ..!!.. user ..!!..

    public function user_index(){
        $this->data['blogs'] = $this->model->getBlog();
    }

    public function user_add(){
        $this->data['categories'] = $this->model->getCategories();
        if ($_POST){
            $result = $this->model->add_Blog($_POST);
            if ($result){
                Router::redirect('/user/blogs');
            } else {
                Session::setFlash('Error.');
            }
        }
    }

    public function user_edit(){
        $this->data['categories'] = $this->model->getCategories();
        if ($_POST){
            $id = isset($_POST['id']) ? $_POST['id'] : null;
            $result = $this->model->add_Blog($_POST, $id);
            if ($result){
                Session::setFlash('Page was saved.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/user/blogs');
        }
        if (isset($this->params[0])){
            $this->data['blogs'] = $this->model->getById($this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/user/blogs');
        }
    }

    public function user_delete(){
        if (isset($this->params[0])){
            $result = $this->model->delete($this->params[0]);
            if ($result){
                Session::setFlash('Page was deleted.');
            } else {
                Session::setFlash('Error');
            }
        }
        Router::redirect('/user/blogs');
    }

    public function user_blog_view(){
        if (isset($this->params[0])){
            $this->data['blogs'] = $this->model->getById($this->params[0]);
            $this->data['blogs_comments'] = $this->model->getCommentsById($this->params[0]);
            Session::set('blog_id',$this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/user/blogs');
        }
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->addComments($_POST, $id);
            if ($result) {
                Router::redirect('/user/blogs/blog_view/'.$this->params[0]);
            } else {
                Session::setFlash("Error");
            }
        }

    }

    public function user_edit_comments(){
        if (isset($this->params[0])){
            $this->data['blogs_comments'] = $this->model->getCommentsEdit($this->params[0]);
        }
        if ($_POST){
            $id = $this->params[0];
            $result = $this->model->editComments($_POST, $id);
            if ($result){
                Router::redirect('/user/blogs/blog_view/'.Session::get('blog_id'));
            } else {
                Session::setFlash('Error.');
            }
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
        Router::redirect('/user/blogs/blog_view/'.Session::get('blog_id'));
    }

    public function user_pages(){
        if (isset($this->params[0])) {
            $this->data['blogs'] = $this->model->getPageBlog($this->params[0]);
        } else {
            Router::redirect('/user/blogs');
        }
    }

    public function user_category(){
        if (isset($this->params[0])) {
            $this->data['category'] = $this->model->getCategory($this->params[0]);
            $this->data['one_category'] = $this->model->getOneCategories($this->params[0]);
        } else {
            Router::redirect('/user/blogs');
        }
    }

    public function user_search(){
        if (!empty($_POST['search'])){
            $result = $this->model->search($_POST['search']);
            if ($result) {
                $this->data['search'] = $result;
            } else {
                Session::setFlash("Error search");
            }
        }
    }


    //........................ default ..!!.. default ..!!.. default ..!!.. default ..!!..

    public function index(){
        $this->data['blogs'] = $this->model->getBlog();
    }

    public function blog_view(){
        if (isset($this->params[0])){
            $this->data['blogs'] = $this->model->getById($this->params[0]);
            $this->data['blogs_comments'] = $this->model->getCommentsById($this->params[0]);
            Session::set('blog_id',$this->params[0]);
        } else {
            Session::setFlash('Wrong page id.');
            Router::redirect('/blogs');
        }
    }

    public function pages(){
        if (isset($this->params[0])) {
            $this->data['blogs'] = $this->model->getPageBlog($this->params[0]);
        } else {
            Router::redirect('/blogs');
        }
    }

    public function category(){
        if (isset($this->params[0])) {
            $this->data['category'] = $this->model->getCategory($this->params[0]);
            $this->data['one_category'] = $this->model->getOneCategories($this->params[0]);
        } else {
            Router::redirect('/blogs');
        }
    }

    public function search(){
        if (!empty($_POST['search'])){
            $result = $this->model->search($_POST['search']);
            if ($result) {
                $this->data['search'] = $result;
            } else {
                Session::setFlash("Error search");
            }
        }
    }

}