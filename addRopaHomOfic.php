<?php
header("Access-Control-Allow-Origin: *");
	include 'conexion.php';
    
	
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST ['zona'];
	$departamento = $_POST ['departamento'];
    $categoria = $_POST ['categoria'];
    $camisa = $_POST ['camisa'];
    $pantalon = $_POST ['pantalon'];
    $largo = $_POST ['largo'];
    $zapato = $_POST ['zapato'];
    $observ = $_POST ['observ'];
    date_default_timezone_set('America/Mexico_City');
    $fecha = date("Y-m-d H:i:s");
    
	
	$connect->query("INSERT INTO ropa_hombre_ofic (rpe, nombre, zona, departamento, categoria, camisa, pantalon, largo, zapato, observ,fecha) 
    VALUES ('".$rpe."','".$nombre."','".$zona."','".$departamento."','".$categoria."','".$camisa."','".$pantalon."','".$largo."','".$zapato."','".$observ."','".$fecha."')");
    

    
?>

