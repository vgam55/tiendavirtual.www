function submenus(menus)
{
      var productos='';
      var varSubCat='';

       productos='';
       for (j=0; j<menus.length; j++)
       {

          productos=productos+'<li><a href="#">'+menus[j].nombre+'</a> <ul>';
          varSubCat=menus[j].subCat;
          for (k=0;k<varSubCat.length; k++)
           {
               productos=productos+'<li><a href="#">'+varSubCat[k].nombre+'</a></li>';
           }

             productos=productos+'</ul></li>';

       }
       productos=productos+'</ul>';

     return productos;
}

$(document).ready(function(){
 $.ajax({
        url:"/categorias",
        type:"GET",
        dateType:"JSON",
        success:function(datos){
var principales=["Productos", "Promociones", "Acerca de", "Oportunidad de negocio"];

              var principal="";
              //Creamos el menu principal con las opciones que aparecen directamente
              principal='<ul class="nav">';
              for(i=0;i<principales.length;i++)
              {
                  principal=principal+'<li><a href="#">'+principales[i]+'</a>';
                  if(principales[i]=='Productos')
                  {
                    principal=principal+'<ul>'+submenus(datos);
                  }
                  principal=principal+'</li>';
              }
              principal=principal+'</ul>';
              $("#header").append(principal);


             // $("#Productos").append(productos);
        },
        error: function(xhr, status){
               alert(xhr+"   "+status);
              }
        });

});