<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Inicio</title>
    </head>
    <body>
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="#">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>


        <h1>Datos personales</h1>

        <%//Traer los datos del maestro
            Maestro ma = (Maestro) request.getAttribute("maestro");%>

        Id maestro : <input  readonly="readonly"  type="text" name="id" value="<%= ma.getIdMaestro()%>"><br>
        Nombre maestro : <input  readonly="readonly" type="text"  value="<%= ma.getNombreMaestro()%>"><br>
        Correo: <input type="text"  readonly="readonly"  value="<%= ma.getCorreo()%>"><br>
        Teléfono: <input type="text"  readonly="readonly" value="<%= ma.getTelefono()%>"><br>
        Departamento: <input type="text"  readonly="readonly" value="<%= ma.getDepartamento()%>"><br>
    </body>
</html>

