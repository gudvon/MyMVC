<?php

class User extends Model{

    public function getByLogin($login){

        $login = trim($login);
        $login = stripslashes($login);
        $login = htmlspecialchars($login);

        $login = $this->db->escape($login);
        $sql = "select * from users where login = '{$login}' limit 1";
        $result = $this->db->query($sql);
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

    public function getByEmail($email){
        $email = $this->db->escape($email);
        $sql = "select * from users where email = '{$email}' limit 1";
        $result = $this->db->query($sql);
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

    public function getByPass($pass){
        $pass = $this->db->escape($pass);
        $sql = "select * from users where password = '{$pass}' limit 1";
        $result = $this->db->query($sql);
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

    public function getByRole($role){
        $role = $this->db->escape($role);
        $sql = "select role from users where login = '{$role}' limit 1";
        $result = $this->db->query($sql);
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

    public function setUserRegistration($dataarray){
        $array = array();
        foreach ($dataarray as $data) {
            $array[] = "'" . $data . "'";
        }
        $sql = $this->db->query("INSERT INTO users (login,email,role,password) VALUES (".implode(',',$array).")");
        return $sql;
    }

    public static function getCountUsers(){
        $sql = "select COUNT(id) from users";
        return App::$db->query($sql);
    }

    public static function getUserBlogs($id){
        $sql = "select * from blogs where user_id = {$id} ORDER BY `id` DESC";
        return App::$db->query($sql);
    }

    public static function getUserDiscus($id){
        $sql = "select * from discussions where user_id = {$id} ORDER BY `date` DESC";
        return App::$db->query($sql);
    }

    public static function CountUserBlogs($id){
        $id = (int)$id;
        $sql = "select COUNT(id) from blogs where user_id = {$id}";
        return App::$db->query($sql);
    }

    public static function CountUserDiscus($id){
        $id = (int)$id;
        $sql = "select COUNT(id) from discussions where user_id = {$id}";
        return App::$db->query($sql);
    }

    public static function CountUserBlogComments($id){
        $id = (int)$id;
        $sql = "select COUNT(id) from comments where user_id = {$id}";
        return App::$db->query($sql);
    }

    public static function CountUserDiscusComments($id){
        $id = (int)$id;
        $sql = "select COUNT(id) from blogs_comments where user_id = {$id}";
        return App::$db->query($sql);
    }
}