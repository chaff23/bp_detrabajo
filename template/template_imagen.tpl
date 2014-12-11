<!DOCTYPE html>
<html lang="es">
<head>
<title>{title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=latin1"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style/styles.css" />
<link rel="stylesheet" type="text/css" href="style/style.css" />
<link rel="stylesheet" type="text/css" href="style/{css}" />
<link rel="stylesheet" type="text/css" href="style/imagen_p.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,700,600' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<header>
		<style>
		html { 
			background: url(style/images/{detail}) no-repeat fixed left ; 
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}
		</style>
		<div id="hea">
			<div id="hea1">
				{logo}
			</div>
			<div id="hea2">
				<nav>{navbar}</nav>
			</div>
		</div>
	</header>
	<div id="container">{maincontent}</div>
	<div>{main_object}</div>


</body>
</html>