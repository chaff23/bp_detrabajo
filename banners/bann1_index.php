<?php
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
include_once("classes/mysql.php");
$mysql = new MySQL();
 $consulta = mysql_query("SELECT contenido FROM corporativa_index  WHERE id = 4");
	  while($resultados = mysql_fetch_array($consulta)){  
	  echo $resultados['contenido'];  
	  }  
?>