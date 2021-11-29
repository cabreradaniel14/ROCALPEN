<?php

$connect = new mysqli("localhost","root","","requisiciones");

if($connect){
	 
}else{
	echo "Fallo, revise ip o firewall";
	exit();
}

?>