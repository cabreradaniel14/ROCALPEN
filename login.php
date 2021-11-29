<?php
header("Access-Control-Allow-Origin: *");
    include 'conexion.php';

    $rpe = $_POST['rpe'];
    
    
   

    $consultar=$connect->query("SELECT * FROM usuario WHERE rpe='".$rpe."'");

    $resultado=array();

    while($extraerDatos=$consultar->fetch_assoc()){
        $resultado[]=$extraerDatos;
    }

    echo json_encode($resultado);

    ?>
    