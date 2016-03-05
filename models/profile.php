<?php

class Profile extends Model{

    public function save($data){
        if (!isset($data['nickname']) || !isset($data['name']) || !isset($data['phone']) || !isset($data['vk']) || !isset($data['facebook'])){
            return false;
        }

        $nickname = $this->db->escape($data['nickname']);
        $name = $this->db->escape($data['name']);
        $phone = $this->db->escape($data['phone']);
        $vk = $this->db->escape($data['vk']);
        $facebook = $this->db->escape($data['facebook']);
        $login = Session::get('login');

        $sql = "
            update users
            set nickname = '{$nickname}',
               name = '{$name}',
               phone = '{$phone}',
               vk = '{$vk}',
             facebook = '{$facebook}'
             WHERE login = '{$login}'
            ";

        return $this->db->query($sql);
    }

    public function getList(){
        $sql = "select * from users where 1";
        return $this->db->query($sql);
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

    public function editPassword($newpass){
        $result = $this->db->query("UPDATE users SET password = '{$newpass}' WHERE login = 'user'");
        if (isset($result[0])){
            return $result[0];
        }
        return false;
    }

    public function showSave(){
        $login = Session::get('login');
        $sql = "select nickname, `name`, phone, vk, facebook from users where login = '{$login}'";
        return $this->db->query($sql);
    }

}