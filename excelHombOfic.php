<?php
include("conexion2.php");
$Crew = "SELECT * FROM ropa_hombre_ofic";
header("Content-Type: application/vnd-excel; charset=iso-8859-1");
header("Content-Disposition: attachment; filename=GrupoDelta.xls");
?>
<table border="1">
    <caption>Prestación de Ropa de Oficina Caballero</caption>
   <tr>
    <th>id</th>
    <th>RPE</th>
    <th>Nombre</th>
    <th>Zona</th>
    <th>Departamento</th>
    <th>Categoria</th>
    <th>Camisa</th>
    <th>Pantalón</th>
    <th>Largo</th>
    <th>Zapato</th>
    <th>Fecha</th>
   </tr> 
<?php $resultado = mysqli_query($mysqli, $Crew);
while($row=mysqli_fetch_assoc($resultado)) { ?>
<tr>
    <td><?php echo $row["id"];?></td>
    <td><?php echo $row["rpe"];?></td>
    <td><?php echo $row["nombre"];?></td>
    <td><?php echo $row["zona"];?></td>
    <td><?php echo $row["departamento"];?></td>
    <td><?php echo $row["categoria"];?></td>
    <td><?php echo $row["camisa"];?></td>
    <td><?php echo $row["pantalon"];?></td>
    <td><?php echo $row["largo"];?></td>
    <td><?php echo $row["zapato"];?></td>
    <td><?php echo $row["fecha"];?></td>
</tr>
<?php } mysqli_free_result($resultado);?>
</table>

