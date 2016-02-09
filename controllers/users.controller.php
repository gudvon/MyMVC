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



    public function guest_register()
    {
        if ($_POST && !empty($_POST['login']) && !empty($_POST['email']) && !empty($_POST['password'])) {

            $login = $_POST['login'];
            $email= $_POST['email'];
            $password= $_POST['password'];

            //......................... проверка всего подряд
            $login = stripslashes($login);
            $login = htmlspecialchars($login);
            $login = trim($login);
            $email = stripslashes($email);
            $email = htmlspecialchars($email);
            $email = trim($email);
            $password = stripslashes($password);
            $password = htmlspecialchars($password);
            $password = trim($password);

            //......................... конект с базой данных
            $log = App::$db->query("SELECT * FROM `users` WHERE login = '$login'");
            if (!$log){
                App::$db->query("INSERT INTO users (login,email,password) VALUES ('$login','$email','$password')");
            } else {
                echo "Error!!!!!!!!!!";
            }

            unset($log);
            $log = $this->model->getByLogin($login);
            if ($log && $log['is_active']){
                Session::set('login', $log['login']);
                Session::set('role', $log['role']);

            }
            Router::redirect('/guest/');
        }
    }

    public function guest_logout(){
        Session::destroy();
        Router::redirect('/default/');
    }

}