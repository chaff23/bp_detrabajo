<ul>
<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT nombre,ruta FROM menus_botones WHERE posicion = 4");
	  while($row=$mysql->fetch_array($sql)){  
		echo '<li>';
		echo 	'<a href="'.$row[1].'" class="boton">';
		echo 		$row[0];
		echo 	'</a>';
		echo '</li>';
	  }
?>
</ul>
