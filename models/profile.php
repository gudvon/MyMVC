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
        $id = Session::get('id');

        if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
            move_uploaded_file($_FILES["avatar"]["tmp_name"], $_SERVER['DOCUMENT_ROOT'] . "/webroot/img/avatars/{$id}.jpg");
        }

        $avatar = "/webroot/img/avatars/{$id}.jpg";

        $sql = "
            update users
            set nickname = '{$nickname}',
               name = '{$name}',
               phone = '{$phone}',
               vk = '{$vk}',
             facebook = '{$facebook}',
             avatar = '{$avatar}'
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
        $sql = "select * from users where login = '{$login}'";
        return $this->db->query($sql);
    }

    public function showUser($id){
        $id = (int)$id;
        $sql = "select * from users WHERE id = '{$id}'";
        return $this->db->query($sql);
    }

    public function deleteUser($id){
        $sql1 = "delete from users WHERE id = '{$id}'";
        $sql2 = "delete from comments WHERE user_id = '{$id}'";
        $sql3 = "delete from discussions WHERE user_id = '{$id}'";
        $sql4 = "delete from blogs WHERE user_id = '{$id}'";
        $sql5 = "delete from blogs_comments WHERE user_id = '{$id}'";
        $this->db->query($sql1);
        $this->db->query($sql2);
        $this->db->query($sql3);
        $this->db->query($sql4);
        $this->db->query($sql5);
        return $sql5;
    }

}