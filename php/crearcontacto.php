<?php
include('conexion.php');
$nombre=$_POST['nombre'];
$telefono=$_POST['telefono'];
$fecha=$_POST['fecha'];
$mensaje=$_POST['mensaje'];
$correo=$_POST['correo'];

$query="insert into contacto(fecha,nombre,correo,telefono,mensaje) 
values('$fecha','$nombre','$correo','$telefono','$mensaje')";
$result=mysqli_query($connection,$query);

if(!$result){
    die("no se pudo guardar");
}else{
 echo "guardado";
}



?>