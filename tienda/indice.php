<?php
if(isset($_GET['ruta'])){
	$ruta=$_GET['ruta'];
}
//echo 'Memoria usada en bytes '.memory_get_usage().'<br>';
//print_r($_SESSION);
if(empty($ruta)){
	include("ordenes.php");
}else{
	include($ruta);
}
?>
