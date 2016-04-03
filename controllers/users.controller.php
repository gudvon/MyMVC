<?php

class UsersController extends Controller{

    public function __construct($data = array()) {
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
                Session::set('id', $user['id']);
            }
            Router::redirect('/admin/');
        }
    }

    public function admin_logout(){
        Session::destroy();
        Router::redirect('/');
    }

    public function login(){
        if ($_POST && isset($_POST['login']) && isset($_POST['password'])){
            $userlog = $this->model->getByLogin($_POST['login']);
            $userpass = md5(Config::get('salt').$_POST['password']);
            if ($userlog && $userlog['is_active'] && $userpass == $userlog['password']){
                Session::set('login', $userlog['login']);
                Session::set('role', $userlog['role']);
                Session::set('id', $userlog['id']);
                Session::set('avatar', $userlog['avatar']);
                Session::set('nickname', $userlog['nickname']);
                Router::redirect('/user/');
            } else {
                Session::setFlash("The entered login Wrong");
            }
        }
    }

    public function user_logout(){
        Session::destroy();
        Router::redirect('/');
    }

    public function registration(){
        if ($_POST && isset($_POST['login']) && isset($_POST['email']) && isset($_POST['password'])){
            if($this->model->getByLogin($_POST['login'])){
                Session::setFlash("The entered login already exists");
                return false;
            }

            $login = stripslashes($_POST['login']);
            $login = trim($login);
            $login = htmlspecialchars($login);
            $email = stripslashes($_POST['email']);
            $email = trim($email);
            $email = htmlspecialchars($email);
            $password = stripslashes($_POST['password']);
            $password = trim($password);
            $password = htmlspecialchars($password);

            $dataarray = array(
                'login' => $login,
                'email' => $email,
                'role' => 'user',
                'password' => md5(Config::get('salt').$password)
            );
            if ($this->model->setUserRegistration($dataarray)){
                Router::redirect('/users/login');
                $this->login();
                Router::redirect('/user/profiles');
            }
        }
    }

}
