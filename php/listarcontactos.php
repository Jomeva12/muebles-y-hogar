<?php
   
 include('conexion.php');

        //listar en detalles
       
          $query="SELECT *from contacto" ;
  
    $result =mysqli_query($connection,$query);   
    $json=array(); 
       if(!$result){
die("No se pudo Listar");
    }else{

   
    
        while($row=mysqli_fetch_array($result)){
          $json[]=array(
            'fecha'=>$row['fecha'],
            'nombre'=>$row['nombre'],
            'correo'=>$row['correo'],
            'telefono'=>$row['telefono'],
            'mensaje'=>$row['mensaje'],

             ); 
              }
         $jsonString=json_encode($json);
        echo $jsonString;
        
      }
?>