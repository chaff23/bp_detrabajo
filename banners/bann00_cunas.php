<?php
include_once("classes/mysql.php");
$mysql=new MySQL();
?>
<head>
    <link rel="stylesheet" type="text/css" href="library/Elastislide-master/css/elastislide.css" />
    <link rel="stylesheet" type="text/css" href="library/Elastislide-master/css/custom.css" />
    <script src="library/Elastislide-master/js/modernizr.custom.17475.js"></script>
    </head>
<?php
echo '<div id="cunas_bg" class="container demo-1">';
echo '<div id="cunas_tit">';
echo    'Cunas';
echo '</div>';
echo    '<ul id="carousel" class="elastislide-list">';
$sql=$mysql->consulta("SELECT id,imagen FROM catalogo_index WHERE categoria = 1 ORDER BY id ASC");
while($row=$mysql->fetch_array($sql)){
    echo '<li id="cunas_img">';
    echo    '<img src="images/catalogo/'.$row[1].'">';
    echo '</li>';
}
echo    '</ul>';
echo '</div>';
?>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script type="text/javascript" src="library/Elastislide-master/js/jquerypp.custom.js"></script>
        <script type="text/javascript" src="library/Elastislide-master/js/jquery.elastislide.js"></script>
        <script type="text/javascript">
            
            $( '#carousel' ).elastislide();
            
        </script>