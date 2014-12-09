<?php
session_start();
if($_SESSION['ruta']==''){
	$seleccion = '';
}else{
	$seleccion = ' AND categoria = '.$_SESSION['ruta'];
}

$requested_page = $_POST['page_num'];
$set_limit = (($requested_page - 1) * 24) . ",24";
?>
<script type="text/javascript">
$(function() {
    $('#gallery a').lightBox();
});
</script>

<?php
include_once("../classes/mysql.php");
$mysql = new MySQL();
$sql = $mysql->consulta("SELECT SQL_CALC_FOUND_ROWS catalogo_index.id,catalogo_index.imagen,catalogo_index.nombre,catalogo_index.dimensiones,catalogo_index.precio FROM catalogo_index INNER JOIN catalogo_asigna ON catalogo_index.id = catalogo_asigna.pieza WHERE catalogo_asigna.label = '$ruta' ORDER BY catalogo_index.id ASC LIMIT 24");
$html = '';
while ($row = mysql_fetch_array($sql)) {
    $html .= "<div id='gallery'>";
	$html .=	"<a href='images/catalogo/" . $row[1] . "' >";	
	$html .=		"<img src='images/catalogo/" . $row[1] . "' />";
	$html .=	"</a>";
	$html .= '<div id="catalogo_nombre">'.$row[3].'</div>';
	$html .=  "</div>";
}
echo $html;
exit;
?>