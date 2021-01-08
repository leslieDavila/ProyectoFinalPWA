<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Maestros</title>
    </head>
    <body >
        
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>
        
        
        <% ArrayList<Maestro> lista = (ArrayList<Maestro>) request.getAttribute("listaMaestros"); 
           String idCarrera=(String) request.getAttribute("idCarrera");
           request.setAttribute("idCarrera", idCarrera);
        
        
        %>
        <h1>MAESTROS DE CARRERA: <%=idCarrera%> </h1>
         

        <table Style='border-collapse:collapse' border='1' width='100%'>
            <thead>
            <th>Id Materia</th>
            <th>Maestro</th>
            <th> Información </th>
        </thead>
        <tbody>
            <% for (Maestro li : lista) {

            %>
            <tr>
                <td><%= li.getIdMaestro()%></td>
                <td><%= li.getNombreMaestro()%></td>

                <td><a href="reporte_controlador?idMaestro=<%= li.getIdMaestro()%>">Reporte</a></td>

            </tr>
            <% }%>
        </tbody>
    </table>

    </body>
</html>
