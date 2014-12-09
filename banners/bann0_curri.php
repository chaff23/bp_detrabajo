<?php
include_once("classes/mysql.php");
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$rubro=1;
}
$mysql=new MySQL();
$sql_cuenta=$mysql->consulta("SELECT id FROM corporativa_index WHERE ruta = 4");
$cuenta=$mysql->num_rows($sql_cuenta);
$sql=$mysql->consulta("SELECT contenido FROM corporativa_index WHERE banner = 0 AND publicado = 1 AND orden = '$rubro' ");
while($row=$mysql->fetch_array($sql)){
	echo $row['contenido'];
}
/****** Botón Derecho *******/
if($rubro<$cuenta){
	$e=$rubro+1;
	$imagen3="<a href=".$_SERVER['PHP_SELF']."?rubro=".$e.">>></a>";
}else{
	$imagen3='>>';
}
/******* Termina Botón Derecho********/
/******* Botón Izquierdo********/

if($rubro>1){
	$i=$rubro-1;
	$imagen1="<a href=".$_SERVER['PHP_SELF']."?rubro=".$i."><<</a>";
}else{
	$imagen1='<<';
}
echo "<p style='text-align:center'>".$imagen1;
echo " página ".$rubro	." de ".$cuenta."\n";
echo $imagen3."</p>";
/******* Termina Botón izquierdo********/
?>
