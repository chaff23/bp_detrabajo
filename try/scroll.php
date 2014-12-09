<?php
session_start();
if(isset($_GET['ruta'])){
	$ruta = $_GET['ruta'];
}

$sql = mysql_query("SELECT SQL_CALC_FOUND_ROWS catalogo_index.id,catalogo_index.imagen,catalogo_index.nombre,catalogo_index.dimensiones,catalogo_index.precio FROM catalogo_index INNER JOIN catalogo_asigna ON catalogo_index.id = catalogo_asigna.pieza WHERE catalogo_asigna.label = '$ruta' ORDER BY catalogo_index.id ASC LIMIT 24");
$row_object = mysql_query("Select Found_Rows() as rowcount");
$row_object = mysql_fetch_object($row_object);
$actual_row_count = $row_object->rowcount;
?>
<script type="text/javascript">
    var page = 1;
    $(window).scroll(function () {
        $('#more').hide();
        $('#no-more').hide();

        if($(window).scrollTop() + $(window).height() > $(document).height() - 200) {
            $('#more').css("top","400");
            $('#more').show();
        }
        if($(window).scrollTop() + $(window).height() == $(document).height()) {

            $('#more').hide();
            $('#no-more').hide();

            page++;

            var data = {
                page_num: page
            };

            var actual_count = "<?php echo $actual_row_count; ?>";

            if((page-1)* 12 > actual_count){
                $('#no-more').css("top","400");
                $('#no-more').show();
            }else{
                $.ajax({
                    type: "POST",
                    url: "try/data.php",
                    data:data,
                    success: function(res) {
                        $("#result").append(res);
                        console.log(res);
                    }
                });
            }
        }
    });
</script>
<script type="text/javascript">
$(function() {
    $('#gallery a').lightBox();
});
</script>
<div id='more' >Cargando más imágenes</div>
	<div id='no-more' >No hay más qué cargar</div>
		<div id='result'>
<?php
	    while ($row = mysql_fetch_array($sql)) {
	        echo "<div id='gallery'>";
			echo '<table><tr><td>';
			echo 	"<a href='images/catalogo/" . $row[1] . "' >";	
			echo 		"<img src='images/catalogo/" . $row[1] . "' />";
			echo 	"</a></td></tr>";
			echo '<tr><td id="catalogo_nombre">';
			echo 	$row[2].'</td></tr>';
			echo 	'<tr><td id="catalogo_nombre_2">'.$row[3].'</td></tr>';
			echo 	'<tr><td id="catalogo_nombre_3">$'.number_format($row[4],2).'</td></tr>';
			echo '</table>';
			echo "</div>";
	    }
?>
		</div>