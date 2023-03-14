<?php
  
 include('conexion.php');
 
        //listar en detalles
        if(isset($_POST['id'])){
          $id=$_POST['id'];
          $imagen=$_POST['imagen'];
          $query="DELETE from articulos where idarticulos='$id'" ;
          unlink($imagen);
    $result =mysqli_query($connection,$query);   
    if(!$result){
      echo "error";
    }else{
      echo $imagen;

    }
    
       
        }

?>