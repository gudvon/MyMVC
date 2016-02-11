<?php

class UsersController extends Controller{

    public function __construct($data = array())
    {
        parent::__construct($data);
        $this->model = new User();
    }

    public function admin_login(){
        if ($_POST && isset($_POST['login']) && isset($_POST['password'])){
            $user = $this->model->getByLogin($_POST['login']);
            $hash = md5(Config::get('salt').$_POST['password']);
            if ($user && $user['is_active'] && $hash == $user['password']){
                Session::set('login', $user['login']);
                Session::set('role', $user['role']);
            }
            Router::redirect('/admin/');
        }
    }

    public function admin_logout(){
        Session::destroy();
        Router::redirect('/admin/');
    }

    public function user_register(){
        if ($_POST && isset($_POST['login']) && isset($_POST['email']) && isset($_POST['password'])){
            if($this->model->getByLogin($_POST['login'])){
                echo "ERROR !!!!!!!!";
                echo "ERROR !!!!!!!!";
                echo "ERROR !!!!!!!!";
            }

            $login = stripslashes($_POST['login']);
            $login = htmlspecialchars($login);

            $email = stripslashes($_POST['email']);
            $email = htmlspecialchars($email);

            $password = stripslashes($_POST['password']);
            $password = htmlspecialchars($password);

            $dataarray = array(
                'login' => $login,
                'email' => $email,
                'password' => $password
            );
            $user = $this->model->setUserRegistration($dataarray);

            if ($user && $user['is_active']){
                Session::set('login', $user['login']);
                Session::set('role', $user['role']);
            }

        }

    }

}