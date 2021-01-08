<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Maestro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Maestros</title>
    </head>
    <body>
        <%
            //Sesion activa

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    String usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
        %>

        <nav class="navegacion-usuario">

            <a href="inicioadmin.jsp">Inicio</a>
            <a href="crearCarrera.jsp">Agregar Carrera</a>
            <a href="verMaestros_controlador">Profesores</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesion</a>
        </nav> 

        <% ArrayList<Maestro> lista = (ArrayList<Maestro>) request.getAttribute("listaMaestros"); %>

        <h1>Lista de los maestros</h1>

        <table Style='border-collapse:collapse' border='1' width='100%'>
            <thead>
            <th>Id Materia</th>
            <th>Maestro</th>
            <th> Información </th>
        </thead>
        <tbody>
            <%  try {

                    for (Maestro li : lista) {

            %>
            <tr>
                <td><%= li.getIdMaestro()%></td>
                <td><%= li.getNombreMaestro()%></td>

                <td><a class="Azul-4" href="detallesMaestro?idMaestro=<%= li.getIdMaestro()%>">Detalles</a></td>

            </tr>
            <% }

                    } catch (Exception e) {
                        System.out.print(e);
                    }
                %>
        </tbody>
    </table>


</body>
</html>
