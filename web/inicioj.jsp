<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Carrera"%>
<%@page import="java.util.ArrayList"%>
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
        <% Maestro maestro = new Maestro();
            String tipo="", usuario="";
            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    usuario = (String) session.getAttribute("usuario");
                    tipo = (String) session.getAttribute("tipo");

                    //obtener el nombre
                    String name = maestro.getMaestro(usuario);

                    maestro.setNombreMaestro(name);

                } else {
                    response.sendRedirect("index.jsp");
                }
                
            }
            
            String idMaestro = maestro.idMaestro(usuario);
            maestro.setIdMaestro(idMaestro);
        
        
        %>
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="perfilm_controlador?idMaestro=<%= maestro.getIdMaestro() %>">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>

        <h1>BIENVENIDO <%= maestro.getNombreMaestro()%></h1>

        <% ArrayList<Carrera> lista = (ArrayList<Carrera>) request.getAttribute("misCarreras");%>


        <table>
            <thead>
            <th>Id Carrera</th>
            <th>Carrera</th>
            <th>Acciones</th>
        </thead>
        <tbody>
            <% for (Carrera li : lista) {%>
            <tr>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getNombreCarrera()%></td>

                <td><a href="crearMateria.jsp?idCarrera=<%= li.getIdCarrera()%>">Agregar Materias</a></td>
                <td><a href="crearGrupo.jsp?idCarrera=<%= li.getIdCarrera()%>">Agregar Grupo</a></td>
                <td><a href="verMaterias_controlador?idCarrera=<%= li.getIdCarrera()%>">Listado materias</a></td>
                <td><a href="carreraMaestro_controlador?idCarrera=<%= li.getIdCarrera()%>">Reportes</a></td>
                <td><a href="verGrupos_controlador?idCarrera=<%= li.getIdCarrera()%>">Sabana</a></td>

            </tr>
            <%}%>
        </tbody>

    </table>

</body>
</html>
