<?php
	include 'conexion.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM ropa_dama_campo WHERE id=".$id);

?>