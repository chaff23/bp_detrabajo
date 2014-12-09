<?php

	echo '<h1>Contacto</h1>';
	echo '<hr>';
	?>
	<form action="admin/gadgets/mensajes/exe_mail.php" method="post" name="fvalida" class="formulario">
<?php
	require_once('../maciaslitigantes/classes/recaptcha/recaptchalib.php');
	$publickey = "6Ler8dYSAAAAAMJSkIdV7IzPjNej2Ywlk6CY25xP";
	echo recaptcha_get_html($publickey);			
?>
        <input type="text" name="nombre" placeholder="Nombre (Requerido)" required><br>
        <input type="email" name="telefono" placeholder="Teléfono (Requerido)" required><br>
        <input type="email" name="email" placeholder="Correo (Requerido)" required><br>
        <input type="text" name="subject" placeholder="Asunto"><br><br>
        <textarea name="descripcion" placeholder="Describa su asunto a detalle..."></textarea><br>
        <input type="submit" value="Enviar">
    </form>

