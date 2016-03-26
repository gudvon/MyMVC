<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 22.03.2016
 * Time: 13:34
 */

class Blog extends Model{

    public function getBlog(){
        $sql = "select * from blogs";
        return $this->db->query($sql);
    }

    public static function getAliasBlog($id){
        $sql = "select SUBSTR(`content`, 1, 500) from blogs WHERE id = '{$id}'";
        return App::$db->query($sql);
    }

    public function add_Blog($data){
        if (!isset($data['title']) || !isset($data['content'])){
            return false;
        }

        $title = stripslashes($data['title']);
        $title = htmlspecialchars($title);

        $content = stripslashes($data['content']);
        $content = htmlspecialchars($content);

        $id = Session::get('id');

        $img_id = rand(1, 99999);

        if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
            move_uploaded_file($_FILES["avatar"]["tmp_name"], $_SERVER['DOCUMENT_ROOT'] . "/webroot/img/blog/blog_photo/{$id}_{$img_id}.jpg");
        }

        $photo = "/webroot/img/blog/blog_photo/{$id}_{$img_id}.jpg";

        $sql = "insert into blogs set title = '{$title}', photo = '{$photo}', content = '{$content}', `date` = NOW(), user_id = '{$id}'";

        return $this->db->query($sql);

    }


}