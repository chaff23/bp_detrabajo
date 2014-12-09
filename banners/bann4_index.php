<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
?>
<div>
<?php
for($i=1; $i<=3;$i++){
	 $consulta = mysql_query("SELECT titulo,contenido FROM corporativa_index  WHERE banner = 4 AND orden = '$i' ");
		  while($row = mysql_fetch_array($consulta)){
			echo '<div id="foot3-'.$i.'">';
			echo '<strong>'.$row['titulo'].'</strong><br>';
			echo '<small>'.$row['contenido'].'</small> ';  
			echo '</div>';
		  }
}
?>
</div>