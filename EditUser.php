<?php

	include 'conexion.php';
	
	$id = $_POST['id'];
	$rpe = $_POST['rpe'];
	$nombre = $_POST['nombre'];
    $apellido = $_POST['apellido']
	$zona = $_POST['zona'];
    $usuario = $_POST['usuario'];
    $trabajador = $_POST['trabajador'];
	
	

	
	$connect->query("UPDATE usuario SET rpe='".$rpe."', nombre='".$nombre."', zona='".$zona."', usuario='".$usuario."',trabajador='".$trabajador."' WHERE id=". $id);

?>