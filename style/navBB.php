<ul>
<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT imagen,ruta,nombre FROM menus_botones");
	  while($row=$mysql->fetch_array($sql)){  
		echo '<li class="'.$row[0].'_b">';
		echo 	'<a href="'.$row[1].'">';
		echo 		'<img src="style/images/'.$row[0].'.png"><br>';
		echo $row[2];
		echo 	'</a>';
		echo '</li>';
	  }
?>
</ul>
