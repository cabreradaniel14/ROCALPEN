<?php

	include 'conexion.php';
	
	$id = $_POST['id'];
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST['zona'];
	$departamento = $_POST['departamento'];
	$categoria = $_POST['categoria'];
	$camisola = $_POST['camisola'];
	$pantalon = $_POST['pantalon'];
	$largo = $_POST['largo'];
	$talla_bota = $_POST['talla_bota'];
	$tipo_bota = $_POST['tipo_bota'];
	$monedero = $_POST['monedero'];
	$observ = $_POST['observ'];
	

	
	$connect->query("UPDATE ropa_dama_campo SET rpe='".$rpe."', nombre='".$nombre."', zona='".$zona."',departamento='".$departamento."',categoria='".$categoria."',camisola='".$camisola."',pantalon='".$pantalon."',largo='".$largo."',talla_bota='".$talla_bota."',tipo_bota='".$tipo_bota."',observ='".$observ."',monedero='".$monedero."' WHERE id=".$id);

?>