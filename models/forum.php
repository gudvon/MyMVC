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

    public function getCategory_id(){
        $sql = "select id from categories";
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


    //........................ discussions ..!!.. discussions ..!!.. discussions ..!!.. discussions ..!!..

    public function lastDiscussion(){

    }

    public function checkCategory_id($cat_id){
        $sql = "select * from discussions WHERE category_id = '{$cat_id}'";
        $result = $this->db->query($sql);
        if (isset($result)){
            return true;
        }
        return false;
    }

    public function saveDiscussion($data, $id){
        if (!isset($data['alias']) || !isset($data['title']) || !isset($data['content'])){
            return false;
        }
        $alias = $this->db->escape($data['alias']);
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);
        $user_id = Session::get('id');
        $id = (int)$id;
        $sql = "insert into discussions set alias = '{$alias}', title = '{$title}', content = '{$content}', user_id = '{$user_id}', `date` = NOW(), category_id = '{$id}'";
        return $this->db->query($sql);
    }

    public function getDiscussions($id){
        $id = (int)$id;
        $sql = "select * from discussions WHERE category_id = '{$id}'";
        return $this->db->query($sql);
    }

    public function getDiscussionsId($id){
        $id = (int)$id;
        $sql = "select * from discussions WHERE id = '{$id}'";
        return $this->db->query($sql);
    }

    public function getLastDiscussion($id){
        $id = $id['id'];
        $sql = "select * from discussions WHERE category_id = '{$id}' limit 1";
        return $this->db->query($sql);
    }

    public function deleteDiscussions($id){
        $id = (int)$id;
        $sql = "delete from discussions where id = '{$id}'";
        return $this->db->query($sql);
    }


    //........................ comments ..!!.. comments ..!!.. comments ..!!.. comments ..!!..

    public function getComments($id){
        $id = (int)$id;
        $sql = "select * from comments WHERE discussion_id = '{$id}'";
        return $this->db->query($sql);
    }

    public function addComments($data, $id){
        if (!isset($data['content'])){
            return false;
        }
        $content = $this->db->escape($data['content']);
        $user_id = Session::get('id');
        $id = (int)$id;
        $sql = "insert into comments set content = '{$content}', user_id = '{$user_id}', `date` = NOW(), discussion_id = '{$id}'";
        return $this->db->query($sql);
    }

    public static function getUser($id){
        $sql = "select nickname, avatar, id from users WHERE id = '{$id}'";
        return App::$db->query($sql);
    }

    public static function getCommentsCount($id){
        $sql = "select id from comments WHERE discussion_id = '{$id}'";
        return App::$db->query($sql);
    }

    public function deleteComments($id){
        $id = (int)$id;
        $sql = "delete from comments where id = '{$id}'";
        return $this->db->query($sql);
    }

}