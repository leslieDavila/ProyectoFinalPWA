<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Materia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Materias</title>
    </head>

    <nav>
        <a href="jefe_controlador">Inicio</a>
        <a href="">Perfil</a>

        <a  href='login_controlador?cerrar=true'>Cerrar Sesión</a>

    </nav>


    <body>


        <% List<Materia> lista = (ArrayList<Materia>) request.getAttribute("listaMaterias");
            String idCarrera = (String) request.getAttribute("idCarrera");
            request.setAttribute("idCarrera", idCarrera);
            ;%>



        <h1>Materias</h1>

        <table Style='border-collapse:collapse' border='1' width='80%'>
            <thead>
            <th>Id Materia</th>
            <th>Materia</th>
            <th>Semestre</th>
            <th>Creditos</th>
            <th>HT</th>
            <th>HP</th> 
            <th>Modificar</th>
            <th>Eliminar</th> 
        </thead>
        <tbody>
            <% for (Materia li : lista) {%>
            <tr>
                <td><%= li.getIdMateria()%></td>
                <td><%= li.getNombreMateria()%></td>
                <td><%= li.getSemestre()%></td>
                <td><%= li.getCreditos()%></td>
                <td><%= li.getHt()%></td>
                <td><%= li.getHp()%></td>
                <td><a href="modificarMateria_controlador?idMateria=<%= li.getIdMateria()%>">Modificar</a></td>
                <td><a href="eliminarMateria_controlador?idMateria=<%= li.getIdMateria()%>&idCarrera=<%=idCarrera%>">Eliminar</a></td>


            </tr>
            <% }%>

        </tbody>           
    </table>

    <label><%=idCarrera%></label>


</body>
</html>
