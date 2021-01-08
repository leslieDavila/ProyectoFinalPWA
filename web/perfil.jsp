<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Signika:wght@300;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/estilos.css"/> 

    </head>
    <body>
        <nav>
            <a class="Azul-4" href="iniciomaestro.jsp">Inicio</a>
            <a class="Azul-4" href="#">Perfil</a>

            <a class="Azul-4" class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>


        <h1 class="Azul-4">Datos personales</h1>

        <%//Traer los datos del maestro
            Maestro ma = (Maestro) request.getAttribute("maestro");%>

        Id maestro : <input  readonly="readonly"  type="text" name="id" value="<%= ma.getIdMaestro()%>"><br>
        Nombre maestro : <input  readonly="readonly" type="text"  value="<%= ma.getNombreMaestro()%>"><br>
        Correo: <input type="text"  readonly="readonly"  value="<%= ma.getCorreo()%>"><br>
        Teléfono: <input type="text"  readonly="readonly" value="<%= ma.getTelefono()%>"><br>
        Departamento: <input type="text"  readonly="readonly" value="<%= ma.getDepartamento()%>"><br>


    </body>
</html>

