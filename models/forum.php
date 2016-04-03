<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 07.03.2016
 * Time: 12:35
 */

class Forum extends Model{

    public function saveCategory($data, $id = null){
        if (!isset($data['title']) || !isset($data['content']) || !isset($data['category_picture'])){
            return false;
        }

        $id = (int)$id;
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);
        $category_picture = $data['category_picture'];
        $topics_id = $data['topics_id'];
        $is_published = isset($data['is_published']) ? 1 : 0;

        $category_avatar = "/webroot/img/forum_avatars/{$category_picture}.png";

        if (!$id){
            $sql = "
            insert into categories
                set title = '{$title}',
                content = '{$content}',
                avatar = '{$category_avatar}',
                topics_id = '{$topics_id}',
                is_published = '{$is_published}'
                ";
        } else {
            $sql = "
            update categories
                set title = '{$title}',
                content = '{$content}',
                avatar = '{$category_avatar}',
                is_published = '{$is_published}'
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

        $sql1 = "delete from categories WHERE id = '{$id}'";

        $sql2 = "delete from discussions WHERE category_id = '{$id}'";

        $this->db->query($sql1);
        $this->db->query($sql2);
        return $sql2;

    }

    public static function getAllDiscussionById($id){
        $id = (int)$id;
        $sql = "select id from discussions WHERE category_id = '{$id}'";
        return App::$db->query($sql);
    }

    public static function getAllCommentsById($id){
        $id = (int)$id;
        $sql = "select comments.id from comments, discussions WHERE comments.discussion_id = discussions.id and discussions.category_id = '{$id}'";
        return App::$db->query($sql);
    }

    public static function getLastUserCommentById($id){
        $id = (int)$id;
        $sql = "select comments.* from comments, discussions WHERE comments.discussion_id = discussions.id and discussions.category_id = '{$id}' ORDER BY comments.date DESC Limit 1";
        return App::$db->query($sql);
    }

    public static function getLastUserDiscussionById($id){
        $id = (int)$id;
        $sql = "select discussions.* from comments, discussions WHERE comments.discussion_id = discussions.id and discussions.category_id = '{$id}' ORDER BY comments.date DESC Limit 1";
        return App::$db->query($sql);
    }


    //........................ topics ..!!.. topics ..!!.. topics ..!!.. topics ..!!..

    public function saveTopic($data, $id = null){
        if (!isset($data['name']) || !isset($data['alias'])){
            return false;
        }

        $id = (int)$id;
        $name = $this->db->escape($data['name']);
        $alias = $this->db->escape($data['alias']);
        $is_published = isset($data['is_published']) ? 1 : 0;

        if (!$id){
            $sql = "insert into topics set name = '{$name}', alias = '{$alias}'";
        } else {
            $sql = "update topics set name = '{$name}', alias = '{$alias}' where id = {$id}";
        }

        return $this->db->query($sql);

    }

    public function getTopic(){
        $sql = "select * from topics";
        return $this->db->query($sql);
    }

    public function getTopicById($id){
        $id = (int)$id;
        $sql = "select * from topics where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public function deleteTopic($id){
        $id = (int)$id;
        $sql = "delete from topics where id = {$id}";
        return $this->db->query($sql);
    }


    //........................ discussions ..!!.. discussions ..!!.. discussions ..!!.. discussions ..!!..

    public static function getLastDiscussions(){
        $sql = "select * from discussions ORDER BY `id` DESC LIMIT 5";
        return App::$db->query($sql);
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

    public function editDiscussion($data, $id){
        if (!isset($data['alias']) || !isset($data['title']) || !isset($data['content'])){
            return false;
        }
        $id = (int)$id;
        $alias = $this->db->escape($data['alias']);
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);
        $sql = "update discussions set alias = '{$alias}', title = '{$title}', content = '{$content}', `date` = NOW() where id = {$id}";
        return $this->db->query($sql);
    }

    public function getDiscussions($id){
        $id = (int)$id;
        $sql = "select * from discussions WHERE category_id = '{$id}' ORDER BY `date` DESC";
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
        $sql1 = "delete from comments where discussion_id = '{$id}'";
        $sql2 = "delete from discussions where id = '{$id}'";
        $this->db->query($sql1);
        $this->db->query($sql2);
        return $sql2;
    }

    public static function allDiscussion(){
        $sql = "select * from discussions";
        return App::$db->query($sql);
    }


    //........................ comments ..!!.. comments ..!!.. comments ..!!.. comments ..!!..

    public function getComments($id){
        $id = (int)$id;
        $sql = "select * from comments WHERE discussion_id = '{$id}'";
        return $this->db->query($sql);
    }

    public function getIdComments($id){
        $id = (int)$id;
        $sql = "select * from comments WHERE id = '{$id}'";
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

    public function editComments($data, $id){

        if (!isset($data['content'])){
            return false;
        }

        $id = (int)$id;

        $content = $this->db->escape($data['content']);

        $sql = "update comments set content = '{$content}', `date` = NOW() where id = {$id}";

        return $this->db->query($sql);

    }

    public static function getUser($id){
        $sql = "select * from users WHERE id = '{$id}'";
        return App::$db->query($sql);
    }

    public static function getCommentsCount($id){
        $sql = "select id from comments WHERE discussion_id = '{$id}'";
        return App::$db->query($sql);
    }




    public static function getUserCommentsCount($id){
        $sql = "select id from comments WHERE user_id = '{$id}'";
        return App::$db->query($sql);
    }




    public static function getLastComment($id){
        $sql = "select user_id, `date` from comments WHERE discussion_id = '{$id}' ORDER BY `date` DESC limit 1";
        return App::$db->query($sql);
    }

    public function deleteComments($id){
        $id = (int)$id;
        $sql = "delete from comments where id = '{$id}'";
        return $this->db->query($sql);
    }

}