<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BIENVENIDO</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <link rel="stylesheet" href="js/libs/twitter-bootstrap/css/bootstrap.css">
        <script>
            $(document).ready(function(){
                // alert("me la pelas")
                $("#mensaje").click(function(){
                   // $("#respuesta").html("ya me apachurraste! ahora me cumples");
                   
                   
                  $.ajax({
                      /* LOS SIGUIENTES SON ATRIBUTOS DE AJAX CON JQUERY
                       * SIEMPRE SEPARADOS CON COMAS
                       */
                      url:'http://localhost:8095/mavenspring/servicios/hola2/mensaje',
                      type: 'GET',
                      data:{
                          
                      },
                      success: function (data, textStatus, jqXHR){
                          $("#respuesta").html(data);
                          
                      },
                      failure:function(data){
                          
                      }
                  }); /*CIERRA AJAX */
                }); /* CIERRA CLICKEO*/
            });
        </script>
    </head>
    <body>
        <h1 id="mensaje" class="btn btn-lg btn-primary"> Dame!! </h1>
        <div id="respuesta">........</div>
    </body>
</html>
