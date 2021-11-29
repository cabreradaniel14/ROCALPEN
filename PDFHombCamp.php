<?php
 //Agregamos la libreria FPDF
 require('fpdf/fpdf.php');
 class PDF extends FPDF
{
// Cabecera de página



function Header()
{
    // Logo
    $this->Image('image/cfe logo.png',70,30,100);
    $this->Image('image/LOGO SUBGERENCIA.png',850,30,100);
    // Arial bold 15
    $this->SetFont('Arial','B',12);
    // Movernos a la derecha
    $this->Cell(400);
    
    // Título
    $this->Cell(100,10,'Reporte de Prestacion de Ropa de Campo Caballero',10,0,'C');
    
    // Salto de línea
    $this->Ln(80);
    
    $this->Cell(100);
    $this->Cell(50, 30, 'RPE', 1, 0, 'C', 0);
    $this->Cell(150, 30, 'Nombre', 1, 0, 'C', 0);
    $this->Cell(60, 30, 'Zona', 1, 0, 'C', 0);
    $this->Cell(105, 30, 'Departamento', 1, 0, 'C', 0);
    $this->Cell(100, 30, 'Categoria', 1, 0, 'C', 0);
    $this->Cell(55, 30, 'Camisola', 1, 0, 'C', 0);
    $this->Cell(60, 30, 'Pantalon', 1, 0, 'C', 0);
    $this->Cell(50, 30, 'Largo', 1, 0, 'C', 0);
    $this->Cell(50, 30, 'Bota', 1, 0, 'C', 0);
    $this->Cell(50, 30, 'Talla', 1, 0, 'C', 0);

    $this->Ln(30);

   
    
    
}



// Pie de página
function Footer()
{
    date_default_timezone_set('America/Mexico_City');
$fecha = date('l jS \of F Y h:i:s A');
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,'Page '.$this->PageNo() .$fecha,0,0,'C');
}
}
 require 'conexion2.php';
 $consulta = "SELECT * FROM ropa_hombre_campo";
 $resultado = $mysqli->query($consulta);
 $pdf = new PDF('L','pt','Legal'); //Creamos un objeto de la librería
 $pdf->AddPage(); //Agregamos una Pagina
 $pdf->SetFont('Arial','',8); //Establecemos tipo de fuente, negrita y tamaño 16

//Agregamos texto en una celda de 40px ancho y 10px de alto, Con Borde, Sin salto de linea y Alineada a la derecha
 while($row = $resultado->fetch_assoc()){
     
    
    
    $pdf->Cell(100);
     $pdf->Cell(50,30, $row['rpe'], 1, 0, 'C', 0);
     $pdf->Cell(150, 30, $row['nombre'], 1, 0, 'C', 0);
     $pdf->Cell(60, 30, $row['zona'], 1, 0, 'C', 0);
     $pdf->Cell(105,30, $row['departamento'],1,0,'C',0);
     $pdf->Cell(100,30, $row['categoria'],1,0,'C',0);
     $pdf->Cell(55,30, $row['camisola'],1,0,'C',0);
     $pdf->Cell(60,30, $row['pantalon'],1,0,'C',0);
     $pdf->Cell(50,30, $row['largo'],1,0,'C',0);
     $pdf->Cell(50,30, $row['tipo_bota'],1,0,'C',0);
     $pdf->Cell(50,30, $row['talla_bota'],1,1,'C',0);
    
     
     
 }
    
 $pdf->Output(); //Mostramos el PDF creado
?>