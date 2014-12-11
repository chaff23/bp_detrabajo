<?php 
$boton=array(
	array(1=>'Imagen',2=>'Comunicaci&oacute;n',3=>'Marketing Digital',4=>'Herramientas'),
	array(1=>'index.php',2=>'comunicacion.php',3=>'marketing_digital.php',4=>'herramientas.php')
);
for($i=1;$i<=4;$i++){?>	
		<input type="button" id="bt<?php echo $i ?>" value="<?php echo $boton[0][$i] ?>">

<script type="text/javascript">
    $("#bt1").click(function(){
		$(".text1").toggleClass("text1-change",true);
		$(".text2").toggleClass("text2-change",false);
		$(".text3").toggleClass("text3-change",false);
		$(".text4").toggleClass("text4-change",false);
    });
    $("#bt2").click(function(){
		$(".text1").toggleClass("text1-change",false);
		$(".text2").toggleClass("text2-change",true);
		$(".text3").toggleClass("text3-change",false);
		$(".text4").toggleClass("text4-change",false);
    });
	$("#bt3").click(function(){
		$(".text1").toggleClass("text1-change",false);
		$(".text2").toggleClass("text2-change",false);
		$(".text3").toggleClass("text3-change",true);
		$(".text4").toggleClass("text4-change",false);
    });
	$("#bt4").click(function(){
		$(".text1").toggleClass("text1-change",false);
		$(".text2").toggleClass("text2-change",false);
		$(".text3").toggleClass("text3-change",false);
		$(".text4").toggleClass("text4-change",true);
    });
</script>
<?php	 } ?>
