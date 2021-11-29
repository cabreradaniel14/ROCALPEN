<?php
header("Access-Control-Allow-Origin: *");
	include 'conexion.php';
    
	
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
	$zona = $_POST ['zona'];
	$departamento = $_POST ['departamento'];
    $categoria = $_POST ['categoria'];
    $camisola = $_POST ['camisola'];
    $pantalon = $_POST ['pantalon'];
    $largo = $_POST ['largo'];
    $tipo_bota = $_POST ['tipo_bota'];
    $talla_bota = $_POST['talla_bota'];
    $observ = $_POST ['observ'];
    date_default_timezone_set('America/Mexico_City');
    $fecha = date("Y-m-d H:i:s");
   

	
	$connect->query("INSERT INTO ropa_hombre_campo (rpe, nombre, zona, departamento, categoria, camisola, pantalon, largo, tipo_bota,talla_bota,observ, fecha) 
    VALUES ('".$rpe."','".$nombre."','".$zona."','".$departamento."','".$categoria."','".$camisola."','".$pantalon."','".$largo."','".$tipo_bota."','".$talla_bota."','".$observ."','".$fecha."')");
    

    
?>
