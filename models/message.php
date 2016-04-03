<?php

class Message extends Model{

    public function save($data, $id = null){
        if (!isset($data['name']) || !isset($data['email']) || !isset($data['message'])){
            return false;
        }

        $id = (int)$id;

        $name = trim($data['name']);
        $name = stripslashes($name);
        $name = htmlspecialchars($name);
        $email = trim($data['email']);
        $email = stripslashes($email);
        $email = htmlspecialchars($email);
        $message = trim($data['message']);
        $message = stripslashes($message);
        $message = htmlspecialchars($message);

        $name = $this->db->escape($name);
        $email = $this->db->escape($email);
        $message = $this->db->escape($message);

        if (!$id){
            $sql = "insert into messages set name = '{$name}', email = '{$email}', message = '{$message}'";
        } else {
            $sql = "update messages set name = '{$name}', email = '{$email}', message = '{$message}' where id = {$id}";
        }

        return $this->db->query($sql);
    }

    public function getList(){
        $sql = "select * from messages where 1";
        return $this->db->query($sql);
    }
}