<?php
if(isset($_GET['rubro'])){
	$rubro=$_GET['rubro'];
}
if(isset($_GET['categoria'])){
	$categoria=$_GET['categoria'];
}
if(empty($rubro)){
	$rubro=1;
}
?>
<div id="gallery">
<?php
include_once("classes/mysql.php");
$mysql = new MySQL();
$sql=$mysql->consulta("SELECT catalogo_index.imagen,catalogo_ext.nombre,catalogo_index.nombre,catalogo_index.subnombre,catalogo_index.descripcion,catalogo_index.dimensiones,catalogo_index.precio FROM catalogo_index INNER JOIN catalogo_ext ON catalogo_index.ext = catalogo_ext.id  INNER JOIN catalogo_categoria ON catalogo_index.categoria = catalogo_categoria.id WHERE catalogo_categoria.nombre = '$categoria' AND catalogo_index.orden =  '$rubro' ");
	  while($row = $mysql->fetch_array($sql)){
		echo '<div id="bann0_tienda1">';
		echo 	'<a href="images/catalogo/'.$row[0].'.'.$row[1].'">';
		echo 		'<img src="images/catalogo/'.$row[0].'.'.$row[1].'">';
		echo 	'</a>';  
		echo '</div>';
		echo '<div id="bann0_tienda2">';
		echo '<h3>'.$row[2].'</h3>';
		echo '<h4>'.$row[3].'</h4>';
		echo $row[4];
		echo '<h5><strong>Dimensiones:</strong> '.$row[5].'</h5>';
		echo '<h6><strong>Precio:</strong> $'.number_format($row[6],2).'<h6>';
		echo '</div>';
	  }  
?>