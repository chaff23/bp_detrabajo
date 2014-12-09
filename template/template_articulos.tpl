<!DOCTYPE html>
<html lang="es">
<head>
<title>{title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=latin1" />
<link rel="stylesheet" type="text/css" href="style/style.css" />
<link rel="stylesheet" type="text/css" href="style/style_obra.css" />
<link rel="stylesheet" type="text/css" href="style/{css}" />
<link rel="stylesheet" type="text/css" href="library/jquery-lightbox-0/css/jquery.lightbox-0.5.css" media="screen" />
<link rel="shortcut icon" href="style/images/pg.ico" type="image/ico" />

<script src="library/jquery-1.4.3.min.js" type="text/javascript"></script>
<script type="text/javascript" src="library/jquery-lightbox-0/js/jquery.lightbox-0.5.js"></script>  
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52956610-1', 'auto');
  ga('send', 'pageview');

</script>
<!--<meta name="viewport" content="width=device-width, minimum-scale=1.0, 
 maximum-scale=1.0">-->
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	<header>
		<hgroup>
			{logo}
		</hgroup>
	</header>
<section>
	<figure id="main_tecnica">{detail}</figure>
	<article id="main_obra">
		{main_object}
	</article>
</section>
	<footer>
		<nav id="foot2">
			{navbar}
		</nav>		
			<div id="foot3">{bann4}</div>
	</footer>
</body>
</html>