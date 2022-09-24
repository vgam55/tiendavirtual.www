$(document).ready(function(){
  $.ajax({
        url:"/categorias",
        type:"GET",
        dateType:"JSON",
        success:function(datos){
           $.each(datos,function(index,value){
             console.log (index+". "+value);
           })

        },
        error:function(xhr, status){
             alert(xhr+"   "+status);
        }
      });
});