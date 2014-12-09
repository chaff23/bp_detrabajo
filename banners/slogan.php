<?php
require_once("classes/mysql.php");
$mysql=new MySQL();

$sql=$mysql->consulta("SELECT subtitulo FROM template_general");
	while($row=$mysql->fetch_array($sql)){
		echo '<div="header_slogan">'.$row[0].'</div>';
	}
?>
