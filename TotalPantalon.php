<!DOCTYPE html>
<html>

<head>
    <title>Total de Camisolas</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/fondo.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  <a class="navbar-brand" href="#"><img src="image/cfe logo.png" alt="" width="50" height="30"></a>    
    <a class="navbar-brand" href="#">ROCALPEN</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="TotalDamaCamp.php">Regresar al menú</a>
        </li>
        
        
      </ul>
      
    </div>
  </div>
</nav>

<div class="fondo">
    <br>
    <form class="form" action="" method="get">
        <input type="text" placeholder="Escribe el total por tallas" aria-label="Escribe el total por tallas" name="busqueda"> <br>
         
        <input type="submit" name="enviar" value="Buscar">

    </form>
    <br><br><br>
    
    <?php
    include 'conexion.php';
    if (isset($_GET['enviar'])){
        $busqueda = $_GET['busqueda'];

        $consulta = $connect->query("SELECT COUNT(*) as Total FROM ropa_dama_campo WHERE pantalon = '$busqueda'");

        while ($row = $consulta->fetch_array()) {
            ?>
           <table style="text-align:center;" class="table table-dark table-striped">
  <thead>
    <tr>
    
      
      <th scope="col">Cantidad por talla seleccionada</th>
     
    </tr>
    
  </thead>
  <tbody>
    <tr>
    
    <td><?php echo $row['Total'].'<br>'; ?></td>  
      
     
    </tr>

    
  </tbody>
</table>
            

          

            <?php
        }
    }
    ?>


    

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    

</body>