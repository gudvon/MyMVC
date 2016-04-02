<?php
/**
 * Created by PhpStorm.
 * User: Kirill
 * Date: 07.02.2016
 * Time: 13:24
 */

Config::set('site_name', 'My Site Name');

Config::set('languages' , array('en', 'ru'));

Config::set('routes', array(
    'default' => '',
    'admin' => 'admin_',
    'user' => 'user_',
));

Config::set('default_route', 'default');
Config::set('default_language', 'en');
Config::set('default_controller', 'defaults');
Config::set('default_action', 'index');

Config::set('db.host', 'localhost');
Config::set('db.user', 'root');
Config::set('db.password', '');
Config::set('db.db_name', 'mvc');

Config::set('salt', 'jd7sj3sdk964he7e');