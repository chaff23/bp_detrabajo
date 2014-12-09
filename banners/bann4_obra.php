<?php 
include_once("classes/conex.php");
$link = Conectarse();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(empty($rubro)){
	$rubro=1;
}
$pagina= sacar($_SERVER['PHP_SELF'],"patricia/",".php");

$mysql = new MySQL();
$sql_cat = $mysql->consulta("SELECT id FROM catalogo_categoria WHERE nombre = '$pagina'");
while($row_cat=$mysql->fetch_array($sql_cat)){
	$sel = $row_cat[0];
}

$sql = mysql_query("SELECT id FROM catalogo_index WHERE categoria = '$sel'",$link);
$cuenta=mysql_num_rows($sql);
/****** Botón Derecho *******/
if($rubro<$cuenta){
	$e=$rubro+1;
	$imagen3="<a href=".$_SERVER['PHP_SELF']."?rubro=".$e."><img src='style/images/btn-der.png' class='rollover'></a>";
}else{
	$imagen3='<img src="style/images/btn-der.png">';
}
/******* Termina Botón Derecho********/
if($rubro>1){
	$i=$rubro-1;
	$imagen1="<a href=".$_SERVER['PHP_SELF']."?rubro=".$i."><img src='style/images/btn-izq.png' class='rollover'></a>";
}else{
	$imagen1='<img src="style/images/btn-izq.png">';
}
echo $imagen1;
echo $imagen2="<img src='style/images/emblema.png'>";
echo $imagen3;
?>
