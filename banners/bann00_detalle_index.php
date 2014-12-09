<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql=$mysql->consulta("SELECT id,nombre,imagen FROM fotos_index WHERE visible = 1 ORDER BY orden ASC LIMIT 1 ");
$row=$mysql->fetch_array($sql);
echo '<div id="detalle_index_img">';
echo 	'<img src="images/fotos/'.$row[2].'">';
echo '</div>';
echo '<div id="detalle_index_tit">';
echo 	$row[1];
echo '</div>';
?>