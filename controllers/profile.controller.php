<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 13.02.2016
 * Time: 4:44
 */
class ProfileController extends Controller {

    public function __construct($data = array())
    {
        parent::__construct($data);
        $this->model = new Message();
    }

    public function index(){
        if ($_POST){
            if ($this->model->save($_POST)){
                Session::setFlash('Thank you!');
            }
        }
    }

    public function user_index(){
        $this->data = $this->model->getList();
    }

}