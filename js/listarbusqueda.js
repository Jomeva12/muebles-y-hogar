$(function () {
  busqueda();
});
function getUrlVal() {
  var val = [], hash;
  var dir = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
  for (var i = 0; i < dir.length; i++) {
    hash = dir[i].split('=');
    val.push(hash[0]);
    val[hash[0]] = hash[1];
  }
  return val;
}

function busqueda(){
   // e.preventDefault()

   var buscarr = decodeURI(getUrlVal()["clave"]);
    let datos={
      buscar:buscarr
    }

    $.ajax({
      url: './php/busqueda.php',
      type: 'POST',
      data: datos,
      success: function (response) {
        let plantilla = "";
        let articulos = JSON.parse(response); 
        articulos.forEach(articulo => {
          plantilla += `
      
      <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
            <div class="product_list">
              <div class="product_img"> <img class="img-responsive" src="mueblesyhogar/${articulo.imagen}" alt=""> </div>
              <div class="product_detail_btm">
                <div class="center">
                  <h4><a
                      >${articulo.nombre}</a>
                  </h4>
                </div>
                <div class="starratin">
                  <div class="center"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
                      aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
                      aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
                </div>
                <div class="product_price">
                <p> <span class="old_price">$${articulo.antiguo}&nbspmetro lineal</span> – <span class="new_price">$${articulo.nuevo}&nbspmetro lineal</span></p>
                </div>
              </div>
              <div style="text-align: center;">
              <a  href="https://api.whatsapp.com/send?phone=+573122137410&text=Hola%20estoy%20interesado%20en%20${articulo.nombre}%20con%20precio%20de%20${articulo.nuevo}%20de%20muebles%20y%20hogar" class="float" target="_blank">
              <img src="./images/logos/whatsapp.png" alt="Whatsapp">
              </a>
              </div> 
            </div> 
  
           
          </div>
            </div>
  
      `
  
        })
        $(".contenedordetalletodos").append(plantilla)
  
      }
   

  })
}
