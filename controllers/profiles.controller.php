<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 13.02.2016
 * Time: 4:44
 */
class ProfilesController extends Controller {

    public function __construct($data = array())
{
    parent::__construct($data);
    $this->model = new Profile();
}

    public function user_index(){
        if ($_POST){
            if ($this->model->save($_POST)){
                Session::setFlash('Thank you!');
            }
        }
    }
}

