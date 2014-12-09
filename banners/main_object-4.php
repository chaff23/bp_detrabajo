<?php
if (isset($_GET['pag'])){
	$pag=$_GET['pag'];
}else{
	$pag=0;
}
include_once("classes/paginacion.class.php");
$clPag = new paginacion();
$clPag->pagina($pag);
$clPag->pie($pag); 
?>

	<script type="text/javascript">
	$(function() {
	    $('#gallery a').lightBox();
	});
	</script>
