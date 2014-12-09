<?php
/*include_once("classes/mysql.php");*/
$mysql = new MySQL();
$sql_bann=$mysql->consulta("SELECT id FROM banners_index WHERE visible = 1");
$cuenta_bann=$mysql->num_rows($sql_bann);
?>
<script language="javascript" src="try/js/jquery-1.2.6.min.js"></script>
<script language="javascript">
function recargar(){	
	if ($actual_bann<<?php echo $cuenta_bann; ?> && $actual_bann>0) {
		$actual_bann=$actual_bann+1;
	} else {
		$actual_bann=1;
	}
	var variable_post_bann=$actual_bann;
	$("#recargado_bann").fadeOut(function() {
		$.post('banners/bann0_index_banner.php', { variable: variable_post_bann }, function(data){	
		$("#recargado_bann").html(data).fadeIn();
		});			
	});
}
$actual_bann=1;
timer = setInterval("recargar()", 10000);
</script>
<div id="borde_bann">
	<div id="recargado_bann"><?php include("banners/bann0_index_banner_2.php");?></div>
</div>
