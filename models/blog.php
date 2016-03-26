<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 22.03.2016
 * Time: 13:34
 */

class Blog extends Model{


    //........................ admin ..!!.. admin ..!!.. admin ..!!.. admin ..!!..

    public function getBlog(){
        $sql = "select * from blogs ORDER BY `id` DESC";
        return $this->db->query($sql);
    }

    public static function getAliasBlog($id){
        $sql = "select SUBSTR(`content`, 1, 500) from blogs WHERE id = '{$id}'";
        return App::$db->query($sql);
    }

    public function add_Blog($data, $id = null){
        if (!isset($data['title']) || !isset($data['content'])){
            return false;
        }
        $id = (int)$id;
        $title = stripslashes($data['title']);
        $title = htmlspecialchars($title);
        $content = stripslashes($data['content']);
        $content = htmlspecialchars($content);
        $user_id = Session::get('id');
        $img_id = rand(1, 99999);
        if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
            move_uploaded_file($_FILES["avatar"]["tmp_name"], $_SERVER['DOCUMENT_ROOT'] . "/webroot/img/blog/blog_photo/{$user_id}_{$img_id}.jpg");
        }
        $photo = "/webroot/img/blog/blog_photo/{$user_id}_{$img_id}.jpg";
        if (!$id){
            $sql = "insert into blogs set title = '{$title}', photo = '{$photo}', content = '{$content}', `date` = NOW(), user_id = '{$user_id}'";
        } else {
            $sql = "update blogs set title = '{$title}', photo = '{$photo}', content = '{$content}', `date` = NOW(), user_id = '{$user_id}' where id = '{$id}'";
        }
        return $this->db->query($sql);
    }

    public function getById($id){
        $id = (int)$id;
        $sql = "select * from blogs where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public function delete($id){
        $id = (int)$id;
        $sql = "delete from blogs WHERE id = '{$id}'";
        return $this->db->query($sql);
    }


    //........................ user ..!!.. user ..!!.. user ..!!.. user ..!!..


}