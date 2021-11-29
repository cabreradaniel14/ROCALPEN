<?php
	include 'conexion.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM ropa_hombre_ofic WHERE id=".$id);

?>