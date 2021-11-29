<?php
include 'conexion.php';

$queryResult=$connect->query("SELECT * FROM ropa_hombre_ofic");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}

echo json_encode($result);

?>