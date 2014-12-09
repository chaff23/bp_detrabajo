<?php
include_once("classes/recorte.php");
include_once("classes/mysql.php");
$mysql=new MySQL();
?>
<div id="blog_text">
		<div id="blog_label">
			La nota de hoy
		</div>
<?php
	$sql = $mysql->consulta("SELECT id,titulo,subtitulo,imagen,contenido FROM articulos_index WHERE publicado = 1 ORDER BY id DESC LIMIT 1");
	while($row = $mysql->fetch_array($sql)){
		$id 		= $row[0];
		$titulo 	= $row[1];
		$subtitulo 	= $row[2];
		$imagen 	= $row[3];
		$contenido 	= $row[4];
	}
		echo 	'<div id="blog_tit">';
		echo 		'<h1>';
		echo 				$titulo;
		echo 		'</h1>';
		echo 	'</div>';
		echo 	'<div id="blog_img">';
		echo 		'<a href="articulos.php?rubro='.$id.'" class="rollover">';
		echo 			'<img src="images/articulos/'.$imagen.'" style="max-width:250px">';
		echo 		'</a>';
		echo 	'</div>';
		echo 	'<div id="blog_txt">';
		echo 	'<h2>'.$subtitulo.'</h2>';
		echo 	cut_string($contenido,650).'<br>';
		echo 	'</div>';
?>
</div>
