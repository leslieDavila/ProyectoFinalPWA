<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Reporte"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Reporte</title>
    </head>

    <nav>
        <a href="jefe_controlador">Inicio</a>
        <a href="">Perfil</a>

        <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

    </nav>
    <body>


        <% ArrayList<Reporte> lista = (ArrayList<Reporte>) request.getAttribute("reporte");  %>
        <h1>Reportes</h1>

        <table Style='border-collapse:collapse' border='1' width='100%'>
            <thead>
            <th>Clave Grupo</th>
            <th>Clave Materia</th>
            <th>Materia</th>
            <th>Grupo</th>
            <th>Aula</th>
            <th>No. Alumnos</th>
            <th>Carrera</th>
            <th>Semestre</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
            <th>HT</th>
            <th>HP</th>
            <th>Creditos</th>

        </thead>
        <tbody>
            <% for (Reporte li : lista) {%>
            <tr>
                <td><%= li.getIdGrupo()%></td>
                <td><%= li.getIdMateria()%></td>
                <td><%= li.getNombreMateria()%></td>
                <td><%= li.getGrupo()%></td>
                <td><%= li.getAula()%></td>
                <td><%= li.getNumAlumnos()%></td>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getSemestre()%></td>
                <td><%= li.getLunes()%></td>
                <td><%= li.getMartes()%></td>
                <td><%= li.getMiercoles()%></td>
                <td><%= li.getJueves()%></td>
                <td><%= li.getViernes()%></td> 
                <td><%= li.getHt()%></td>
                <td><%= li.getHp()%></td>
                <td><%= li.getCreditos()%></td>

            </tr>
            <% }%>

        </tbody>           
    </table>
</body>
</html>

