<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 07.03.2016
 * Time: 12:35
 */

class Forum extends Model{

    public function saveCategory($data, $id = null){
        if (!isset($data['title']) || !isset($data['content'])){
            return false;
        }

        $id = (int)$id;
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);

        if (!$id){
            $sql = "
            insert into categories
                set title = '{$title}',
                content = '{$content}'
                ";
        } else {
            $sql = "
            update categories
                set title = '{$title}',
                content = '{$content}'
                where id = {$id}
            ";
        }

        return $this->db->query($sql);

    }

    public function getCategory(){
        $sql = "select * from categories";
        return $this->db->query($sql);
    }

    public function getById($id){
        $id = (int)$id;
        $sql = "select * from categories where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public function deleteCategory($id){
        $id = (int)$id;
        $sql = "delete from categories where id = {$id}";
        return $this->db->query($sql);
    }

    public function saveDiscussion($data){
        if (!isset($data['alias']) || !isset($data['title']) || !isset($data['content'])){
            return false;
        }

        $alias = $this->db->escape($data['alias']);
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);
        $user_id = Session::get('id');
        //$date = 'NOW()';

        $sql = "insert into discussions set alias = '{$alias}', title = '{$title}', content = '{$content}', user_id = '{$user_id}', `date` = NOW()";
        return $this->db->query($sql);

    }

    public function getDiscussions(){
        $sql = "select * from discussions";
        return $this->db->query($sql);
    }

    public function deleteDiscussions($id){
        $id = (int)$id;
        $sql = "delete from discussions where id = {$id}";
        return $this->db->query($sql);
    }

}