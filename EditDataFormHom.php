<?php

	include 'conexion.php';
	
	$id = $_POST['id'];
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST['zona'];
	$departamento = $_POST['departamento'];
	$categoria = $_POST['categoria'];
	$camisa = $_POST['camisa'];
	$pantalon = $_POST['pantalon'];
	$largo = $_POST['largo'];
	$zapato = $_POST['zapato'];
	$observ = $_POST['observ'];
	$monedero = $_POST['monedero'];
	

	
	$connect->query("UPDATE ropa_hombre_ofic SET rpe='".$rpe."', nombre='".$nombre."', zona='".$zona."',departamento='".$departamento."',categoria='".$categoria."',camisa='".$camisa."',pantalon='".$largo."',zapato='".$zapato."',observ='".$observ."',monedero='".$monedero."' WHERE id=". $id);

?>