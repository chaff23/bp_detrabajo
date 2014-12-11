<div class="containerS">
    <div class="contentS">
        <ul class="ca-menu">
			<?php
			include_once("classes/mysql.php");
			$mysql=new MySQL();
			$sql = $mysql->consulta("SELECT id,nombre,subnombre,descripcion FROM catalogo_index WHERE categoria = 2");
				  while($row=$mysql->fetch_array($sql)){  
					echo '<li>';
					echo 	'<a href="imagen_d.php?rubro='.$row[0].'">';
					echo 		'<span class="ca-icon">'.$row[2].'</span>';
					echo		'<div class="ca-content">';
					echo			'<h2 class="ca-main">'.$row[1].'</h2>';
					echo			'<h3 class="ca-sub">'.$row[3].'</h3>';
					echo		'</div>';
					echo	'</a>';
					echo '</li>';
				  }
			?>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
