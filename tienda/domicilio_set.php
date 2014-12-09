<?php
session_start();

include_once("../classes/mysql.php");
$mysql=new MySQL();

if(isset($_GET['xyo'])){
	$_SESSION['cliente']=($_GET['xyo']);
}
if(isset($_POST['xyo'])){
	$_SESSION['cliente']=($_POST['xyo']);
}
if(($_SESSION['privilegioss_id']>4)||($_SESSION['privilegioss_id']==null)){
//	include("../sesion/ip_account_a.php");
}else{
	include("../sesion/if_account_a.php");
}
?>
