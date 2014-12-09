<?php
//include_once("../classes/saca.php");
require_once("classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
$sacado= sacar($_SERVER['PHP_SELF'],"patricia/",".php");

if(empty($rubro)&&($sacado!='curriculum')){
	if($sacado=='index'){
		$sql=$mysql->consulta("SELECT titulo FROM template_general");
			while($row=$mysql->fetch_array($sql)){
				echo $row[0];
			}
	}else{
		echo $sacado;		
	}
}elseif(!empty($rubro)&&($sacado!='curriculum')){
	$sql_cat = $mysql->consulta("SELECT id FROM catalogo_categoria WHERE nombre = '$sacado'");
	while($row_cat=$mysql->fetch_array($sql_cat)){
		$categoria = $row_cat[0];
	}

	$sql=$mysql->consulta("SELECT nombre FROM catalogo_index WHERE categoria = ".$categoria." AND orden = ".$rubro);
		while($row=$mysql->fetch_array($sql)){
			echo $sacado.':: '.$row[0];
		}
}elseif(!empty($rubro)&&($sacado=='curriculum')){
	echo $sacado;
}
?>
