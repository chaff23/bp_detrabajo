<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sql = $mysql->consulta("SELECT id,titulo,contenido,imagen FROM corporativa_index WHERE id = '$rubro'");

while($row = $mysql->fetch_array($sql)){
		$id 		= $row[0];
		$titulo 	= $row[1];
		$contenido	= $row[2];
		$imagen		= $row[3];
	}
	echo '<h1>'.$titulo.'</h1>';
	echo '<hr>';
	echo '<div id="contacto">'.$contenido.'</div>';
?>