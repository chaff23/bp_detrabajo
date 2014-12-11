<?php
    include_once('classes/mysql.php');
    $mysql=new MySQL();
    $sql=$mysql->consulta("SELECT url,pagina FROM template_general");
    $row=$mysql->fetch_array($sql);
	echo '<h1>Contacto</h1>';
	echo '<hr>';
	?>
	<div class="formulario">
	<form action="<?php echo $row[0] ?>/admin/gadgets/mensajes/exe_mail.php" method="post" name="fvalida">
        <input type="text" name="nombre" placeholder="Nombre (Requerido)" required><br>
        <input type="email" name="telefono" placeholder="Teléfono (Requerido)" required><br>
        <input type="email" name="email" placeholder="Correo (Requerido)" required><br>
        <input type="text" name="titulo" placeholder="Asunto"><br><br>
        <textarea name="descripcion" placeholder="Describa su asunto a detalle..."></textarea><br>
        <input type="submit" value="Enviar">
    </form><br><br>
	<div style="width:50%" class="g-recaptcha" data-sitekey="6LcXDf8SAAAAAFKvLEk8Gzl4oBrgYxZAj113Nx8K"></div>
</div>
