<?php

class Profile extends Model {

    public function save($data, $id = null){
        if (!isset($data['nickname']) || isset($data['name']) || isset($data['phone'])|| isset($data['vk'])|| isset($data['facebook'])){
            return false;
        }

        $id = (int)$id;
        $nickname = $this->db->escape($data['nickname']);
        $name = $this->db->escape($data['name']);
        $phone = $this->db->escape($data['phone']);
        $vk = $this->db->escape($data['vk']);
        $facebook = $this->db->escape($data['facebook']);

        if (!$id){
            $sql = "
            insert into messages
            set name = '{$name}',
               email = '{$email}',
             message = '{$message}'
            ";
        } else {
            $sql = "
            update messages
            set name = '{$name}',
               email = '{$email}',
             message = '{$message}'
             where id = {$id}
            ";
        }

        return $this->db->query($sql);

    }

    public function getList(){
        $sql = "select * from messages where 1";
        return $this->db->query($sql);
    }

}