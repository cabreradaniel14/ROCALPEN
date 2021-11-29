<?php
$u = @gzuncompress($c);  
require_once('TCPDF-main/tcpdf.php');
include 'sRGB.icc';

function generatePDF($rpe, $nombre, $zona, $departamento, $categoria, $camisa,$pantalon,$largo,$zapato){

    class PDF extends TCPDF
    {
        public function Header ()
        {
            //Logo
            $image_file = K_PATH_IMAGES.'cfe logo.png'; 
            $this->Image($image_file, 20, 15, 15, 20, '','','T',false,300,'',false,false, 0, false, false,false);
            
            //Set font
            $this->Ln(5);
            $this->SetFont('times','B',12);
    
            //Title
            //Subtitle
            $this->SetTextColor(82,19,0,51);
            $this->Cell(189,5,'Comision Federal de Electricidad', 0, 1, 'C');
            $this->Cell(189,3, 'Subgerencia de Trabajo', 0,1,'C');
            $this->Cell(189,3, 'Division Peninsular', 0,1,'C'); 
            
    
    
    
        }
        public function Footer ()
        {
            $this->SetFont('helvetica', 'I', 8);
            date_default_timezone_set('America/Mexico_City');
            $today = date('F j, Y/ g:i A', time());
            $this->Cell(189,1,'Generacion de formulario: Fecha y Hora: '.$today,0,0,'R');
    
            
        }
    }
    
    $pageLayout = array('139.7', '215.9'); 
    // create new PDF document
    $pdf = new PDF('L', 'mm', $pageLayout, true, 'UTF-8', false);
    
    // set document information
    $pdf->SetCreator(PDF_CREATOR);
    $pdf->SetAuthor('CFE Distribucion');
    $pdf->SetTitle('TCPDF Example 001');
    $pdf->SetSubject('TCPDF Tutorial');
    $pdf->SetKeywords('TCPDF, PDF, example, test, guide');
    
    // set default header data
    $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
    $pdf->setFooterData(array(0,64,0), array(0,64,128));
    
    // set header and footer fonts
    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
    
    // set default monospaced font
    $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
    
    // set margins
    $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
    $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
    
    // set auto page breaks
    $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
    
    // set image scale factor
    $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
    
    // set some language-dependent strings (optional)
    if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
        require_once(dirname(__FILE__).'/lang/eng.php');
        $pdf->setLanguageArray($l);
    }
    
    // ---------------------------------------------------------
    
    // set default font subsetting mode
    $pdf->setFontSubsetting(true);
    
    $pdf->SetFont('dejavusans', '', 14, '', true);
    
    $pdf->AddPage();
    
    $pdf->Ln(8);
    $pdf->SetFont('times','B',20); 
    $pdf->SetTextColor(100, 8, 0, 54);
    $pdf->Cell(180,0,''.$nombre.'',0,1,'R');
    
    $pdf->Ln(8);
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(15,5,'RPE: ',0,0);
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(25,5,''.$rpe.'',0,1);
    
    
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(25,5,'Zona: ',0,0);
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(20,5,''.$zona.'',0,1,'L');
    
    
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(25,5,'Departamento: ',0,0);
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(25,5,''.$departamento.'',0,0);
    
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(80,5,'Categoria: ',0,0,'R');
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(50,5,''.$categoria.'',0,0,'R');
    
    
    
    //salto de linea 
    $pdf->Ln(8);
    $pdf->Cell(189,0, '______________________________________________________________________________________________________________',0,1,'LRTB');
    
        $pdf->SetTextColor(0,0,0,100);
        $pdf->SetFont('times','B',10);
        $pdf->Cell(30,5,'Talla de Camisa: ',0,0,'L');
        //dynamic data from database
        $pdf->SetFont('times','',10);
        $pdf->Cell(40,5,''.$camisa.'',0,0,'L');
    
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(30,5,'Talla de pantalon: ',0,0,'C');
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(15,5,''.$pantalon.'',0,0,'C');
    
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(70,5,'Largo de pantalon: ',0,0,'R');
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(5,5,''.$largo.'',0,0,'R');
    
    $pdf->Ln(8);
    $pdf->SetTextColor(0,0,0,100);
    $pdf->SetFont('times','B',10);
    $pdf->Cell(30,5,'Largo de pantalon: ',0,0,'L');
    //dynamic data from database
    $pdf->SetFont('times','',10);
    $pdf->Cell(5,5,''.$zapato.'',0,0,'L');
    
    $pdf->Ln(8);
    $pdf->Cell(189,0, '______________________________________________________________________________________________________________',0,1,'LRTB');
    
    $pdf->Ln(10);
    
    $pdf->Cell(189,0,'________________________',0,1,'C');
    $pdf->Cell(189,0,'Nombre y Firma',0,1,'C');
    
    $filename = 'Solicitud' .$nombre. '.pdf';
    $filelocation = "C:\\solicitudes";
    
    $pdf->Output($filelocation, 'I');
    
    //============================================================+
    // END OF FILE
    //============================================================+
    

}

// Include the main TCPDF library (search for installation path).








?>