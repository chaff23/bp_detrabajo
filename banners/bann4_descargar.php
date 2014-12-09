<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
?>
<div>
<?php
	 $consulta = mysql_query("SELECT titulo,contenido FROM corporativa_index  WHERE id = 11");
		  while($row = mysql_fetch_array($consulta)){
			echo '<div id="foot3-1">';
			echo '<strong>'.$row['titulo'].'</strong><br>';
			echo '<small>'.$row['contenido'].'</small> ';  
			echo '</div>';
		  }
?>
</div>