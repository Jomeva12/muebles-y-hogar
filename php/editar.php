<?php
  
 include('conexion.php');
 
        //listar en detalles
        if(isset($_POST['id'])){
          $id=$_POST['id'];
          $nombre=$_POST['nombre'];
          $antiguo=$_POST['antiguo'];
          $nuevo=$_POST['nuevo'];  
          $descripcion=$_POST['descripcion'];


          $query="UPDATE articulos set nombre_del_articulo='$nombre', precio_antiguo='$antiguo', precio_nuevo='$nuevo',descripcion='$descripcion' where idarticulos='$id';" ;
    $result =mysqli_query($connection,$query);   
    if(!$result){
      echo "error";
    }else{
      echo "Actualizado";

    }
    
       
        }

?>