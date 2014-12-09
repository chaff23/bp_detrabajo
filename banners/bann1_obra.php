<?php
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$rubro=1;
}
include_once("classes/mysql.php");
//include_once("classes/sacar.class.php");
$pagina= sacar($_SERVER['PHP_SELF'],"patricia/",".php");

$mysql = new MySQL();
$sql_cat = $mysql->consulta("SELECT id FROM catalogo_categoria WHERE nombre = '$pagina'");
while($row_cat=$mysql->fetch_array($sql_cat)){
	$sel = $row_cat[0];
}

$mysql = new MySQL();
 $sql = $mysql->consulta("SELECT nombre,descripcion,dimensiones FROM catalogo_index  WHERE categoria = ".$sel." AND orden =  '$rubro' ");
	  while($row = $mysql->fetch_array($sql)){  
	  echo '<h1>'.$row[0].'</h1>';  
	  echo $row[1].'<br>';  
	  echo $row[2].'<br>';  
	  }  
?>