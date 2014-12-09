<?php
session_start();
include_once("../classes/mysql.php");

include_once("../classes/navbar.class.php");
$naa=new navBar(7,null,0);
$navbar_r=$naa->nB();
echo '<div id="nb_rest">';
echo $navbar_r;
echo '</div>';
?>
