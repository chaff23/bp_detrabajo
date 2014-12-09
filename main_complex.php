<?php
require_once('classes/template.class.php');
$tp=new templateParser('template/template_complex.tpl');
include_once("classes/conex.php");
$link = Conectarse();
$i=1;
$consulta=mysql_query("SELECT content FROM template_complex WHERE visible = 1 ORDER BY orden ASC",$link);
while($row=mysql_fetch_array($consulta)){
	$sep[]=$row[0];
}
//$sep=array(1=>"banners/bann0_articulos.php",2=>"jua",3=>"uno");
/*
$consulta = mysql_query("SELECT content,visible,orden FROM template_complex WHERE visible = 1 ORDER BY orden ASC LIMIT 1",$link);
	while($row = mysql_fetch_array($consulta)){  */
//for($i=1;$i<=3;$i++){
	$tp->parseTemplate($sep);
	echo $tp->display();
//}

?>
