<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 22.03.2016
 * Time: 13:31
 */

class GalleryController extends Controller{

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new Gallerys();
    }


    //........................ admin ..!!.. admin ..!!.. admin ..!!.. admin ..!!..

    public function admin_index(){

    }

    public function admin_add_topic(){
        if ($_POST){
            $result = $this->model->add_topic($_POST);
            if ($result){
                Session::setFlash('New category successfully added.');
            } else {
                Session::setFlash('Error.');
            }
            Router::redirect('/admin/gallery');
        }
    }


    //........................ user ..!!.. user ..!!.. user ..!!.. user ..!!..

    public function user_index(){

    }


}