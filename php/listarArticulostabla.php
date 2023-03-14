<?php
  
 include('conexion.php');

  $query="SELECT *from articulos";
  
    $result =mysqli_query($connection,$query);   
    $json=array(); 
    
        while($row=mysqli_fetch_array($result)){
          $json[]=array(
            'id'=>$row['idarticulos'], 

            'precioantiguo'=>$row['precio_antiguo'],
            'precionuevo'=>$row['precio_nuevo'],
            'nombre'=>$row['nombre_del_articulo'],
            'estrellas'=>$row['estrellas'],
            'imagen'=>$row['foto'],
            'descripcion'=>$row['descripcion'],
            'categoria'=>$row['categoria'],

             ); 
              }
         $jsonString=json_encode($json);
        echo $jsonString;




      

?>