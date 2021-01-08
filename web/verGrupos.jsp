<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Grupo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Grupos</title>
    </head>
    <body>
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>


        <% ArrayList<Grupo> lista = (ArrayList<Grupo>) request.getAttribute("grupos");  %>
        <h1>Sabana de materias</h1>

        <table Style='border-collapse:collapse' border='1' width='100%'>
            <thead>
            <th>Clave Grupo</th>
            <th>Clave Materia</th>
            <th>Clave Carrera</th>
            <th>Materia</th>
            <th>Carrera</th>
            <th>Maestro</th>
            <th>Periodo</th>
            <th>Turno</th>
            <th>Grupo</th>
            <th>No. Alumnos</th>
            <th>Semestre</th>
            <th>Creditos</th>
            <th>Aula</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>


        </thead>
        <tbody>
            <% for(Grupo li: lista){ %>
            <tr>
                <td><%= li.getIdGrupo()%></td>
                <td><%= li.getIdMateria()%></td>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getNombreMateria()%></td>
                <td><%= li.getCarrera()%></td>
                <td><%= li.getMaestro()%></td>
                <td><%= li.getPeriodo()%></td>
                <td><%= li.getTurno()%></td>
                <td><%= li.getGrupo()%></td>
                <td><%= li.getNumAlumnos()%></td>
                <td><%= li.getSemestre()%></td>
                <td><%= li.getCreditos()%></td>
                <td><%= li.getAula()%></td>
                <td><%= li.getLunes()%></td>
                <td><%= li.getMartes()%></td>
                <td><%= li.getMiercoles()%></td>
                <td><%= li.getJueves()%></td>
                <td><%= li.getViernes()%></td> 
            </tr>
            <% } %>

        </tbody>           
    </table>
</body>
</html>

