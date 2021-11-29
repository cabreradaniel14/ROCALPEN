<?php

	include 'conexion.php';
	
	$id = $_POST['id'];
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST['zona'];
	$departamento = $_POST['departamento'];
	$categoria = $_POST['categoria'];
	$blusa = $_POST['blusa'];
	$cadera = $_POST['cadera'];
	$cintura = $_POST['cintura'];
	$falda = $_POST['falda'];
	$pantalon = $_POST['pantalon'];
	$largo = $_POST['largo'];
	$calzado = $_POST['calzado'];
	$observ = $_POST['observ'];
	$monedero = $_POST['monedero'];

	
	$connect->query("UPDATE ropa_dama_ofic SET rpe='".$rpe."', nombre='".$nombre."', zona='".$zona."',departamento='".$departamento."',categoria='".$categoria."',blusa='".$blusa."',cadera='".$cadera."',cintura='".$cintura."',falda='".$falda."',pantalon='".$pantalon."',largo='".$largo."',calzado='".$calzado."',observ='".$observ."',monedero='".$monedero."' WHERE id=". $id);

?>