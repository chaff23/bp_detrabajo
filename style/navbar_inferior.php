<?php
include_once("../classes/navbar.class.php");
$naa=new navBar(6,null,0);
$navbar_i=$naa->nB();

echo '<div id="nb_inf">';
echo $navbar_i;
echo '</div>';

?>
