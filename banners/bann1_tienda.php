<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
 $sql = $mysql->consulta("SELECT id,nombre FROM catalogo_categoria");
	  while($row = $mysql->fetch_array($sql)){  
		echo '<div class="main_tecnica">';
		echo '<a href="'.$_SERVER['PHP_SELF'].'?categoria='.$row[1].'">';
		echo 	'<h2>'.$row[1].'</h2>';
		echo '</a>';
		echo '</div>';
	  }  
?>