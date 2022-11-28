$(document).ready(function(){
  $.ajax({
        url:"/categorias",
        type:"GET",
        dateType:"JSON",
        success:function(datos){
            var menu="";
            var submenu="<ul>";
            for (i=0;i<datos.length;i++)
             {
                menu=menu+"<li><a href='#'>"+datos[i].nombre+"</a></li>";
                for(j=0;j<datos[i].subCat.length;j++)
                {
                    submenu=submenu+"<li><a href='#'>"+datos[i].subCat[j].nombre+"</a></li>";
                }
                submenu=submenu+'</ul>';
                menu=menu+submenu;
                submenu="<ul>";
             }
               $("#desplegable").append(menu);
        },
        error:function(xhr, status){
             alert(xhr+"   "+status);
        }
      });
});


