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
        $sql = "select * from blogs ORDER BY `id` DESC limit 5";
        return $this->db->query($sql);
    }

    public static function getAliasBlog($id){
        $sql = "select SUBSTR(`content`, 1, 500) from blogs WHERE id = '{$id}'";
        return App::$db->query($sql);
    }

    public function add_Blog($data, $id = null){
        if (!isset($data['title']) || !isset($data['content']) || !isset($data['category'])){
            return false;
        }
        $id = (int)$id;
        $title = stripslashes($data['title']);
        $title = htmlspecialchars($title);
        $content = stripslashes($data['content']);
        $content = htmlspecialchars($content);
        $category = $data['category'];
        $category = Blog::getCategoryId($category)[0]['id'];
        $user_id = Session::get('id');
        $img_id = rand(1, 99999);
        if (is_uploaded_file($_FILES["avatar"]["tmp_name"])) {
            move_uploaded_file($_FILES["avatar"]["tmp_name"], $_SERVER['DOCUMENT_ROOT'] . "/webroot/img/blog/blog_photo/{$user_id}_{$img_id}.jpg");
        }
        $photo = "/webroot/img/blog/blog_photo/{$user_id}_{$img_id}.jpg";
        if (!$id){
            $sql = "insert into blogs set title = '{$title}', photo = '{$photo}', content = '{$content}', `date` = NOW(), user_id = '{$user_id}', tags_id = '{$category}'";
        } else {
            $sql = "update blogs set title = '{$title}', content = '{$content}', `date` = NOW(), user_id = '{$user_id}', tags_id = '{$category}' where id = '{$id}'";
        }
        return $this->db->query($sql);
    }

    public static function getCategoryName($id){
        $id = (int)$id;
        $sql = "select `name` from tags where id = '{$id}' limit 1";
        return App::$db->query($sql);
    }

    public static function getCategoryId($data){
        $sql = "select id from tags where `name` = '{$data}' limit 1";
        return App::$db->query($sql);
    }

    public static function getTopCategoriesName(){
        $sql = "SELECT tags.* FROM blogs, tags WHERE blogs.tags_id = tags.id GROUP BY tags.id ORDER BY count(blogs.tags_id) DESC limit 6";
        return App::$db->query($sql);
    }

    public static function getTopCategoriesCount(){
        $sql = "SELECT count(blogs.tags_id) FROM blogs, tags WHERE blogs.tags_id = tags.id GROUP BY tags.id ORDER BY count(blogs.tags_id) DESC limit 6";
        return App::$db->query($sql);
    }

    public static function getAllCategories(){
        $sql = "SELECT tags.*, count(blogs.tags_id) FROM blogs, tags WHERE blogs.tags_id = tags.id GROUP BY tags.id ";
        return App::$db->query($sql);
    }

    public function getCategory($id){
        $id = (int)$id;
        $sql = "select * from blogs where tags_id = '{$id}'";
        return $this->db->query($sql);
    }

    public static function getTagsById($id){
        $id = (int)$id;
        $sql = "select * from tags where id = '{$id}'";
        return App::$db->query($sql);
    }


    public function getById($id){
        $id = (int)$id;
        $sql = "select * from blogs where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public static function getCommentsById($id){
        $id = (int)$id;
        $sql = "select * from blogs_comments where blogs_id = '{$id}'";
        return App::$db->query($sql);
    }

    public function getCommentsEdit($id){
        $id = (int)$id;
        $sql = "select * from blogs_comments where id = '{$id}'";
        return $this->db->query($sql);
    }

    public function addComments($data, $id){
        if (!isset($data['content'])){
            return false;
        }
        $content = $this->db->escape($data['content']);
        $user_id = Session::get('id');
        $id = (int)$id;
        $sql = "insert into blogs_comments set content = '{$content}', user_id = '{$user_id}', `date` = NOW(), blogs_id = '{$id}'";
        return $this->db->query($sql);
    }

    public function editComments($data, $id){
        if (!isset($data['content'])){
            return false;
        }
        $id = (int)$id;
        $content = $this->db->escape($data['content']);
        $sql = "update blogs_comments set content = '{$content}', `date` = NOW() where id = {$id}";
        return $this->db->query($sql);
    }

    public function deleteComments($id){
        $id = (int)$id;
        $sql = "delete from blogs_comments where id = '{$id}'";
        return $this->db->query($sql);
    }

    public static function getCommentCount($id){
        $sql = "select id from blogs_comments WHERE blogs_id = '{$id}'";
        return App::$db->query($sql);
    }

    public function delete($id){
        $id = (int)$id;
        $sql = "delete from blogs WHERE id = '{$id}'";
        return $this->db->query($sql);
    }

    public function getPageBlog($page_id){
        $page_id = (int)$page_id;
        $limit=5;
        $start = $limit*($page_id-1);
        $sql = "SELECT * FROM blogs ORDER BY `id` DESC LIMIT $start, $limit";
        return $this->db->query($sql);
        //http://www.freezecoders.com/2014/01/simple-pagination-using-php-mysql.html
    }

    public static function getPages(){
        $sql = "select COUNT(id) from blogs";
        $num = 5;
        $result = App::$db->query($sql);
        $result = $result[0]["COUNT(id)"];
        $result = (int)$result;
        $total = intval(($result - 1) / $num) + 1;
        $arr = array();
        for ($i = 2; $i <= $total; $i++) {
            $arr[]=$i;
        }
        return $arr;
    }

    public static function getTopCommentedBlogs(){
        $sql = "SELECT blogs.* FROM blogs, blogs_comments WHERE blogs_comments.blogs_id = blogs.id GROUP BY blogs.id ORDER BY count(blogs_comments.blogs_id) DESC limit 3";
        return App::$db->query($sql);
    }

    public static function getTopUsers(){
        $sql = "SELECT users.* FROM users, comments, blogs_comments WHERE users.id = comments.user_id = blogs_comments.user_id GROUP BY users.id ORDER BY count(blogs_comments.user_id) AND count(comments.user_id) DESC limit 5";
        return App::$db->query($sql);
    }

    public static function getCountBlogs(){
        $sql = "select COUNT(id) from blogs";
        return App::$db->query($sql);
    }

    public static function getCountBlogsComments(){
        $sql = "select COUNT(id) from blogs_comments";
        return App::$db->query($sql);
    }

    public static function getLastBlogsComments(){
        $sql = "select * from blogs_comments ORDER BY `id` DESC LIMIT 3";
        return App::$db->query($sql);
    }

    public function search($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        if (!empty($data)) {
            if (strlen($data) < 3) {
                Session::setFlash("Error < 3");
            } else if (strlen($data) > 64) {
                Session::setFlash("Error > 64");
            } else {
                $sql = "SELECT DISTINCT blogs.title, blogs.id, blogs.photo, blogs.date, blogs.user_id
                  FROM blogs, blogs_comments WHERE blogs.content LIKE '%$data%'
                  OR blogs.title LIKE '%$data%' ORDER BY blogs.id DESC";

                return $this->db->query($sql);
            }
        }
    }

    public function add_Category($data){
        if (!isset($data['name'])){
            return false;
        }

        $name = stripslashes($data['name']);
        $name = htmlspecialchars($name);

        $sql = "insert into tags set name = '{$name}'";

        return $this->db->query($sql);
    }

    public function getCategories(){
        $sql = "select * from tags";
        return $this->db->query($sql);
    }

    public function delete_Category($id){
        $id = (int)$id;
        $sql = "delete from tags WHERE id = '{$id}'";
        return $this->db->query($sql);
    }




    //........................ user ..!!.. user ..!!.. user ..!!.. user ..!!..


}