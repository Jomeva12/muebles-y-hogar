<?php
   
 include('conexion.php');

        //listar en detalles
        if(isset($_POST['id'])){
          $id=$_POST['id'];
          $query="SELECT *from articulos where idarticulos='$id'" ;
  
    $result =mysqli_query($connection,$query);   
    $json=array(); 
    
        while($row=mysqli_fetch_array($result)){
          $json[]=array(
            'precioantiguo'=>$row['precio_antiguo'],
            'precionuevo'=>$row['precio_antiguo'],
            'nombre'=>$row['nombre_del_articulo'],
            'estrellas'=>$row['estrellas'],
            'imagen'=>$row['foto'],
            'descripcion'=>$row['descripcion'],

             ); 
              }
         $jsonString=json_encode($json);
        echo $jsonString;
        }

?>