<?php
/*include_once("classes/mysql.php");*/
$mysql = new MySQL();
$sql=$mysql->consulta("SELECT id FROM corporativa_resaque WHERE vincula = 1");
$cuenta=$mysql->num_rows($sql);

?>
<script language="javascript" src="try/js/jquery-1.2.6.min.js"></script>
<script language="javascript">
function recargarM(){	
	if ($actual<<?php echo $cuenta; ?> && $actual>0) {
		$actual=$actual+1;
	} else {
		$actual=1;
	}
	var variable_post=$actual;
	$("#recargado").fadeOut(function() {
		$.post('banners/bann0_index.php', { variable: variable_post }, function(data){	
		$("#recargado").html(data).fadeIn();
		});			
	});
}
$actual=1;
timer = setInterval("recargarM()", 10000);
</script>
<div id="borde">
	<div id="recargado"><?php include("banners/bann0_index_2.php");?></div>
</div>
