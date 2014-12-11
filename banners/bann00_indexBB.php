<?php
include_once("classes/mysql.php");
$mysql= new MySQL();
$sql=$mysql->consulta("SELECT id,titulo,contenido,subtitulo FROM corporativa_index WHERE publicado = 1 AND id < 5 ORDER BY orden");
$i=1;
while($row=$mysql->fetch_array($sql)){
	echo 		'<div class="text'.$i.'">';
	echo 			'<h1>'.$row[1].'</h1>';
	echo 			$row[2];
	echo 			'<span><a href="'.$row[3].'">Leer más</a></span>';
	echo 		'</div>';
	$i=$i+1;
}
?>