$(function(){
  crearcontacto()
  listarMensajes()   
});

function crearcontacto(){

  $("#enviarcontacto").on('click',function(e){
    e.preventDefault()
    let d= new Date();
    let año=d.getFullYear()
    let mes=d.getMonth()+1;
    let dia=d.getDate()

let fecha=año+"/"+mes+"/"+dia+" - "+d.getHours()+":"+d.getMinutes();
console.log(fecha)
    let datos={
      nombre:$("#nombre").val(),
      telefono:$("#telefono").val(),
      correo:$("#correo").val(),
      mensaje:$("#mensaje").val(),
      fecha:fecha
    }
    $.ajax({
      url: './php/crearcontacto.php',
      type: 'POST',
      data:datos,
        success: function(response) {
alert("Mensaje Enviado")
window.location.href = 'index.html';
console.log(response)

      }
    });
  
  })
     
  }
  function listarMensajes(){
    $.ajax({ 
      url: './php/listarcontactos.php',
      type: 'GET',
      success: function(response) {
        console.log(response)
  let plantillatabla=""
  let articulos=JSON.parse(response);
  articulos.forEach(articulo=>{
   plantillatabla+=`<tr>
    <td>${articulo.fecha}</td>
    <td>${articulo.nombre}</td>
    <td>${articulo.correo}</td>
    <td>${articulo.telefono}</td>
    <td>${articulo.mensaje}</td>
    
    </tr>
   `
  })
  $("#listadomensajes").html(plantillatabla)

      }
    });

      } 
  

