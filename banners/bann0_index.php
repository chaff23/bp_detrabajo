<?php
include_once("classes/mysql.php");
$mysql= new MySQL();
$sql=$mysql->consulta("SELECT imagen FROM banners_index ORDER BY id LIMIT 3");
echo '<div class="slider">';
echo 	'<ul class="slides">';
while($row=$mysql->fetch_array($sql)){
	echo 		'<li class="slide">';
	echo 		   '<img src="images/banners/'.$row[0].'">';
	echo 		'</li>';
}
echo 	'</ul>';
echo '</div>  ';
?>
<script href="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="library/jquery-1.10.2.min.js"><\/script>')</script>
<script src="library/plugins.js"></script>
<script type="text/javascript">
$(function(){
	$('.slider').glide({
	autoplay: 3500,
	hoverpause: true, // set to false for nonstop rotate

	});
});
</script>