<?php

	include 'conexion.php';
	
	$nombre = $_POST['nombre'];
	$apellido = $_POST['apellido'];
	$rpe = $_POST ['rpe'];
	$contraseña = $_POST['contraseña'];
	$genero = $_POST ['genero'];
	$zona = $_POST ['zona'];
	$usuario = $_POST ['usuario'];
	$trabajador = $_POST ['trabajador'];
	
	$connect->query("INSERT INTO usuario (nombre, apellido, rpe, contraseña, genero,zona, usuario, trabajador) 
	VALUES ('".$nombre."','".$apellido."','".$rpe."','".$contraseña."','".$genero."','".$zona."','".$usuario."','".$trabajador."')")

?>