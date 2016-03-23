<?php
/**
 * Created by PhpStorm.
 * User: Кирилл
 * Date: 22.03.2016
 * Time: 13:34
 */

class Gallerys extends Model{

    public function add_topic($data){
        if (!isset($data['title'])){
            return false;
        }

        $title = $data['title'];

        //$sql = "select * from categories";
        //return $this->db->query($sql);

    }

}