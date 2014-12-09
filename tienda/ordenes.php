<?php
session_start();

unset($_SESSION['cliente']);
unset($_SESSION['cliente_n']);
unset($_SESSION['cliente_id']);
unset($_SESSION['mesa']);

if($_SESSION['privilegioss_id']==1){
	include("ordenes_caja.php");
}elseif($_SESSION['privilegioss_id']==2){
	include("ordenes_caja.php");	
}elseif($_SESSION['privilegioss_id']==4){
	include("ordenes_caja.php");	
}elseif($_SESSION['privilegioss_id']==5){
	include("ordenes_caja.php");
}elseif($_SESSION['privilegioss_id']==6){
	include("asignado.php");
}else{
	include("ordenes_otros.php");
}



?>