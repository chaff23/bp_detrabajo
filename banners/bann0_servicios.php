<?php
include_once("classes/mysql.php");
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$sel='';
}else{
	$sel=' AND id = '.$rubro;
}
$mysql=new MySQL();
$sql = $mysql->consulta("SELECT id,nombre,descripcion FROM catalogo_index WHERE categoria = 1".$sel);
	  while($row=$mysql->fetch_array($sql)){  
		echo 		'<h1>'.$row[1].'</h1>';
		echo 		'<p>'.$row[2].'</p>';
	  }
?>
