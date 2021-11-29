<?php

	include 'conexion.php';
	
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST ['zona'];
	$departamento = $_POST ['departamento'];
    $categoria = $_POST ['categoria'];
    $blusa = $_POST ['blusa'];
    $cadera = $_POST ['cadera'];
    $falda = $_POST ['falda'];
    $pantalon = $_POST ['pantalon'];
    $largo = $_POST ['largo'];
    $calzado = $_POST ['calzado'];
    $cintura = $_POST ['cintura'];
    $observ = $_POST ['observ'];
    date_default_timezone_set('America/Mexico_City');
    $fecha = date("Y-m-d H:i:s");
	
	$connect->query("INSERT INTO ropa_dama_ofic (rpe, nombre, zona, departamento, categoria, blusa, cadera, falda, pantalon, largo, calzado, cintura,observ,fecha) 
    VALUES ('".$rpe."','".$nombre."','".$zona."','".$departamento."','".$categoria."','".$blusa."','".$cadera."','".$falda."','".$pantalon."','".$largo."','".$calzado."','".$cintura."','".$observ."','".$fecha."')");

?>