<?php
require_once('../classes/template.class.php');
$tp=new templateParser('../template/template_restaurante.tpl');
include_once("../classes/mysql.php");
$mysql = new MySQL();  
$consulta = $mysql->consulta("SELECT title,css,header,logo,navbar,main_object,footer FROM template_index WHERE id = 7");
	while($row = $mysql->fetch_array($consulta)){  
$tp->parseTemplate($row);
echo $tp->display();
	}
?>
