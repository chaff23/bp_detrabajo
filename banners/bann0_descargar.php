<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
if(isset($_GET['rubro'])){
	$rubro = $_GET['rubro'];
}
$sql=mysql_query("SELECT id,imagen FROM descargar_index WHERE visible = 1");
echo '<h2>Descargar</h2>';
	echo '<div id="main_descargar">';
while($row=$mysql->fetch_array($sql)){
	echo '<a href="images/descargas/descargar.php?f='.$row[1].'">';
	echo 	'<img src= "images/descargas/'.$row[1].'" class="rollover" width="50px">';
	echo 	'</a>';
}
?>
	</div>