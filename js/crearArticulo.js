$(function(){
    agregarnuevo()
  
    listarArticulostabla()
    eliminar();
    editar()
    contadorvisitas();
    guardarEdicion()
}); 

function contadorvisitas(){
  $.ajax({
    url: './php/visitas.php',
    type: 'GET',
    success: function(response) {
let articulos=JSON.parse(response);
let visita='';
articulos.forEach(articulo=>{
visita=parseInt(articulo.visita)+1;
$("#contador").html("Visitas:   "+visita)
let datos = {
  visita: visita,
   };

$.post("./php/visitas.php", datos, function (response) {
});
})

    }
  });

 
}
function agregarnuevo(){
    
    $("#guardar").on('click', function(e){
        e.preventDefault()
        var dato = new FormData($("#formulario")[0]);
        $.ajax({
            url: 'php/crearArticulo.php',
            type: 'POST',
            data: dato,
            contentType: false, 
            processData: false,
            success: function(response) {
                
                console.log(response)
                alert("Artículo creado");
                $("#formulario").trigger("reset");
                listarArticulostabla()
                
            }
      
        });
        })
}
function listarArticulostabla(){
      $.ajax({
      url: './php/listarArticulostabla.php',
      type: 'GET',
      success: function(response) {
        
  let plantillatabla=";"
  let articulos=JSON.parse(response);
  articulos.forEach(articulo=>{
   plantillatabla+=`<tr>
    <td>${articulo.id}</td>
    <td>${articulo.nombre}</td>
    <td>${articulo.precioantiguo}</td>
    <td>${articulo.precionuevo}</td>
    <td>${articulo.descripcion}</td>
    <td>${articulo.estrellas}</td>
    <td><img src="mueblesyhogar/${articulo.imagen}" width=80px height=80 ></td>
    <td>${articulo.categoria}</td>
    <td>

    <a class="waves-effect waves-light btn-tiny eliminarmueble" > <img src="./images/logos/eliminar.png" alt=""></a>
    &nbsp<a class="waves-effect waves-light btn-tiny editarmueble" > <img src="./images/logos/editar.png" alt=""></a>

    </td>
    </tr>
   `
  })
  $("#listadoarticulos").html(plantillatabla)

      }
    });
  
  }

  function eliminar(){
      $("#listadoarticulos").on('click','.eliminarmueble',function(e){
        var opcion = confirm("¿Desea eliminar este artículo?");

        if (opcion == true) {
       



     
        
        e.preventDefault();
        var tr = $(this).closest("tr");
        let id = tr.find("td:eq(0)").text().trim();
        let imagen = tr.find("td:eq(6)").text().trim();
       
              let datos = {
                id: id,
                imagen:imagen
                 };
              $.post("./php/eliminarmueble.php", datos, function (response) {
             alert("Eliminado")
             listarArticulostabla()
              });
            }else{
              alert("Cancelado")
            }
          }
          );
    
      
  }
  function editar(){
    $("#listadoarticulos").on('click', '.editarmueble',function(e){
      e.preventDefault()
      var tr = $(this).closest("tr");
      let id = tr.find("td:eq(0)").text().trim();

          var nombre = tr.children("td:nth-child(2)");
          var antiguo = tr.children("td:nth-child(3)");
          var nuevo = tr.children("td:nth-child(4)");
          var descripcion = tr.children("td:nth-child(5)"); 
          var opciones = tr.children("td:nth-child(5)"); 

          nombre.html("<input type='text' id='nombre' value='" +nombre.html() + "'/>");
          antiguo.html("<input type='text' id='antiguo' value='" +antiguo.html() + "'/>");
          nuevo.html("<input type='text' id='nuevo' value='" +nuevo.html() + "'/>");
          descripcion.html("<input type='text' id='descripciontxt' value='" +descripcion.html() + "'/>");
          var opciones = tr.children("td:nth-child(9)"); 
          opciones.html( "<button  class='btn btn-warning guardareditado'  > Guardar</button>");




})
  }
  function guardarEdicion() {
    $('#listadoarticulos').on('click', '.guardareditado', function(e) {
        e.preventDefault();
        var tr = $(this).closest('tr');

        var id = tr.children("td:nth-child(1)").html();
        var nombre = $("#nombre").val()
        var antiguo = $("#antiguo").val()
        var nuevo = $("#nuevo").val()
        var descripcion = $("#descripciontxt").val()
console.log(descripcion)
let datos={
id:id,
nombre:nombre,
antiguo:antiguo,
nuevo:nuevo,
descripcion:descripcion
} 
console.log(datos)
$.post("./php/editar.php", datos, function (response) {
  listarArticulostabla()
  console.log(response)})     
      

       
    });
}
  