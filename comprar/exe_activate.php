<?php
if(isset($_GET['mail'])){
	$mail=$_GET['mail'];
}
if(isset($_GET['name'])){
	$name=$_GET['name'];
}
$asunto = "Creating your account in sayulitacalappa.com";
$cuerpo ="Dear ".$name.",<br> You are close to create your Calappa's account. Just click the confirmation link above.";
$cuerpo .= '<br><br>Activate here: <a href="http://sayulitacalappa.com/calappa/sesion.php?ruta=activate.php&mail='.$mail.'">Activate</a>';
$cuerpo .= '<br><br><br>
<img src="http://sayulitacalappa.com/calappa/style/images/logoCH.png"><br>
<i>Calappa, Sayulita Villas</i><br>';
$cuerpo .= '<small><b>contact@sayulitacalappa.com<br>
www.sayulitacalappa.com</b></small>';

$cabeceras = "Content-type: text/html;charset=utf-8\r\n";
$cabeceras .="From: ferbere@yahoo.com\r\n";
$cabeceras .="From: activate@sayulitacalappa.com\r\n";
$cabeceras .="Bcc: bills@sayulitacalappa.com" . "\r\n";
mail($mail,$titulo,$cuerpo,$cabeceras);
echo '<script>window.location.href="sesion.php?ruta=account.php&created=1";</script>';

?>