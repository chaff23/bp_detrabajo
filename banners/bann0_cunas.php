<?php
session_start();
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
	$query = "AND orden = ".$rubro;
}
if(empty($rubro)){
	$query='';
}
include_once("classes/sacaDer.class.php");
include_once("classes/sacaIzq.class.php");
$pagina= sacar($_SERVER['PHP_SELF'],"/",".php");
$pagi= sacaIzq($pagina,"/");
$pagd= sacaDer($pagina,"/");

include_once("classes/mysql.php");
$mysql = new MySQL();
$sql_cat = $mysql->consulta("SELECT id FROM catalogo_categoria WHERE nombre = '$pagi'");

echo '<div id="gallery">';
while($row_cat=$mysql->fetch_array($sql_cat)){
	$sel = $row_cat[0];
}
echo '<div id="catal_titulo">'.$pagi.'</div>';
echo '<table id="catal_ext">';
echo 	'<tr>';
$i=1;
$sql = $mysql->consulta("SELECT imagen,nombre,descripcion FROM catalogo_index WHERE categoria = '$sel'".$query);
	  while($row=$mysql->fetch_array($sql)){
	  	if($i%4==0){
	  		$tr2='</tr>';
	  	}else{
	  		$tr2='';
	  	}
	  	echo 		'<td>';
	  	echo '<table id="catal_int">';
	  	echo 	'<tr>';
	  	echo 		'<td id="catal_int_img">';
		echo 			'<a href="images/catalogo/'.$row[0].'">';
		echo 				'<img src="images/catalogo/'.$row[0].'">';
		echo 			'</a>';
		echo 		'</td>';
		echo 	'</tr>';
		echo 	'<tr>';
		echo 		'<td id="catal_int_tit">';
		echo 			$row[1];
		echo 		'</td>';
		echo 	'</tr>';
		echo 	'<tr>';
		echo 		'<td id="catal_int_tit2">';
		echo 		'</td>';
		echo 	'</tr>';
		echo 	'<tr>';
		echo 		'<td id="catal_int_des">';
		echo 			$row[2];
		echo 		'<td>';
		echo 	'<tr>';
		echo '</table>';
		echo 		'</td>';
		echo 	$tr2;
		$i=$i+1;
	  }
echo '</table>';
?>
</div>
<script type="text/javascript">
$(function() {
    $('#gallery a').lightBox();
});
</script>
