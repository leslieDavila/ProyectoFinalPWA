<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html background="3.jpg">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       
        <title>Inicio de sesión</title>
    </head>
    <body>
        
     
        <div >
            <h1 class="Azul-3" font-700">Iniciar Sesión</h1>

            <form class="formulario" action="login_controlador" method="post">

                Usuario : <input type="text" name="usuario"><br>
                Contraseña : <input type="password" name="pass"><br>

                <input type="submit" class="boton" name="ingresar"value="Iniciar sesión">
            </form>
        </div>
    </body>
     <link rel="stylesheet" type="text/css" href="css/estilos.css" /> 
</html>
