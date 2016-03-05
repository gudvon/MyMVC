<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 13.02.2016
 * Time: 4:44
 */
class ProfilesController extends Controller {

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new Profile();
    }

    public function user_index(){

        if ($_POST){
            if ($this->model->save($_POST)){
                Session::setFlash('Thank you!');
            }
        }
        $this->data = $this->model->showSave();
    }

    public function user_edit(){
        if ($_POST && isset($_POST['oldpassword']) && isset($_POST['newpassword']) && isset($_POST['newpasswordx2'])){
            if(!$this->model->getByPass(md5(Config::get('salt').$_POST['oldpassword']))){
                Session::setFlash("The entered old password not exists");
                return false;
            }
            if ($_POST['newpassword'] != $_POST['newpasswordx2']) {
                Session::setFlash("The entered passwords doesn't match");
                return false;
            } elseif ($_POST['newpassword'] == $_POST['newpasswordx2']){
                $newpass = md5(Config::get('salt').$_POST['newpassword']);
                $this->model->editPassword($newpass);
                //Router::redirect('/user/');
                Session::setFlash("The entered password changed");
            }
        }
    }


}