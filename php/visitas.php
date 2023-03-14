<?php
include('conexion.php');

$query2="SELECT *from visitas" ;
  
$resulta =mysqli_query($connection,$query2); 

$json=array(); 
while($row=mysqli_fetch_array($resulta)){
    $json[]=array(
      'visita'=>$row['num'],
             ); 
        }
   $jsonString=json_encode($json);
  echo $jsonString;

///////////////

if(isset($_POST['visita'])){
$visita=$_POST['visita'];
   $query = "update visitas set num='$visita' where id_visitas=1;";
   $result =mysqli_query($connection,$query); 
   if(!$result){
    die("no se pudo guardar");
}else{
    echo "guardado";
}


}

?>