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
        if (isset($_POST["Registration"])) {

            if (!empty($_POST['login']) && !empty($_POST['email']) && !empty($_POST['password']) ) {
                $login = htmlspecialchars($_POST['login']);
                $email = htmlspecialchars($_POST['email']);
                $password = htmlspecialchars($_POST['password']);
                $login = trim($login);
                $password = trim($password);
                $sql = App::$db->query("select * from users where login='$login'");
                $numrows = mysql_num_rows($sql);
                if (!empty($numrows['id'])) {
                    exit ("Извините, введённый вами логин уже зарегистрирован. Введите другой логин.");
                }
                // если такого нет, то сохраняем данные
                $sql = App::$db->query("INSERT INTO users (login,password,email) VALUES ('$login','$password','$email')");
                // Проверяем, есть ли ошибки
                if ($sql == 'TRUE') {
                    echo "Вы успешно зарегистрированы! Теперь вы можете зайти на сайт.";
                } else {
                    echo "Ошибка! Вы не зарегистрированы.";
                }
            }
        }

    }

}