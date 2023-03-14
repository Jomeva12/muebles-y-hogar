<?php
include('conexion.php');

$imagen=$_FILES['imagen'];
$nombre=$_POST['nombreArticulo'];
$precioantiguo=$_POST['precioAntiguo'];
$precionuevo=$_POST['precionuevo'];
$estrellas=$_POST['estrellas'];
$descripcion=$_POST['descripcion'];
$categoria=$_POST['categoria'];
 
if(($_FILES["imagen"]["type"] == "image/gif")
|| ($_FILES["imagen"]["type"] == "image/jpeg")
|| ($_FILES["imagen"]["type"] == "image/jpg")
|| ($_FILES["imagen"]["type"] == "image/png")){

$nombreTemporal= $imagen["tmp_name"] ;

$ruta="../fotos/".md5($nombreTemporal).".jpg";
$query="insert into articulos(nombre_del_articulo,precio_antiguo,precio_nuevo,estrellas,descripcion,foto,categoria)
 values('$nombre','$precioantiguo','$precionuevo','$estrellas','$descripcion','$ruta','$categoria');
";
$result=mysqli_query($connection,$query);

if(!$result){
    die("no se pudo guardar".$nombre." ".$precioantiguo." ".$precionuevo." ".$estrellas." ".$descripcion." ".$ruta." ".$categoria);
}else{
   // move_uploaded_file( $nombreTemporal,$ruta);
    //move_uploaded_file($nombreTemporal,$ruta.$nombreTemporal);
    move_uploaded_file (  $nombreTemporal ,  $ruta );
    echo $ruta;
}


}else{
    echo "seleccione una correcta";
}
?>