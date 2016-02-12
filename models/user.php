<?php

class User extends Model{

    public function getByLogin($login){
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
        $result = $this->db->query("INSERT INTO users (login,email,role,password) VALUES (".implode(',',$array).")");
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

}