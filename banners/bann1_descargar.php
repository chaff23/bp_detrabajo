<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
?>
<div>
<?php
	 $consulta = mysql_query("SELECT titulo,contenido FROM corporativa_index  WHERE id = 11");
		  while($row = mysql_fetch_array($consulta)){
			echo '<h2>'.$row['titulo'].'</h2>';
			echo '<small>'.$row['contenido'].'</small> ';  
		  }
?>
</div>