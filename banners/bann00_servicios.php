<ul>
<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,nombre FROM catalogo_index WHERE categoria = 1");
	  while($row=$mysql->fetch_array($sql)){  
		echo '<li>';
		echo 	'<a href="servicios.php?rubro='.$row[0].'" class="rollover">';
		echo 		$row[1];
		echo 	'</a>';
		echo '</li>';
	  }
?>
</ul>
