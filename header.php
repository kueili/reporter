<?php
if (!isset($_SESSION)) {
    //如果沒有$session，就打開session
    session_start();
}

require_once 'function.php';
require_once 'smarty/libs/Smarty.class.php';
$smarty = new Smarty; //新的樣板物件
$db     = link_db(); //連線資料庫
//自動抓樣板檔
define('_PAGE_TPL', str_replace('.php', '.tpl', basename($_SERVER['PHP_SELF'])));
