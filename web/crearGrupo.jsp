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
        <title>Registro de grupos</title>
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

        <%
            // ArrayList<Maestro> list = Maestro.listaMaestro();
            ArrayList<Maestro> ListaMaestro = (ArrayList<Maestro>) request.getAttribute("lista");

        %>
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>

        <h1>Registrar Grupo</h1>
        <% String idCarrera = request.getParameter("idCarrera");%>

        <form action="crearGrupo_controlador" method="post">
            <label> Clave del Grupo</label>
            <input type="text" name="idGrupo" required=""> 



            Maestro:
            <select name="idMaestro" id="idMaestro">

                <option > Seleccione Maestro </option>
                <% try {
                        for (Maestro li : ListaMaestro) {%>
                <option value="<%= li.getIdMaestro()%>"><%= li.getNombreMaestro()%> </option>


                <% }
                    } catch (Exception e) {
                        System.out.println(e);
                    }%>

            </select>

            Materia:
            <select name="idMateria" id="idMateria">

                <option > Seleccione Materia </option>
                <% try {
                        for (Maestro li : ListaMaestro) {%>
                <option value="<%= li.getIdMaestro()%>"><%= li.getNombreMaestro()%> </option>


                <% }
                    } catch (Exception e) {
                        System.out.println(e);
                    }%>

            </select>

            <br>
            Turno:
            <select name="turno">
                <option selected> Seleccionar</option>
                <option>Matutino</option> 
                <option>Vespertino</option> 
            </select>



            Periodo : 
            <select name="periodo">
                <option selected > Seleccionar</option>
                <option>Agosto-Diciembre</option> 
                <option>Enero-Juni</option>
            </select>
            <br>

            <label>Grupo</label>

            <input type="text" name="grupo" required="">

            <label>Aula</label>

            <input type="text" name="Aula" required="">

            <label>Numero de alumnos</label>

            <input type="text" name="numAlumnos" required="">

            <br>
            Lunes:
            <select name="lunes">
                <option selected> Seleccionar</option>
                <option>7:00-8:40</option> 
                <option>8:45-10:25</option> 
                <option>10:30-12:10</option>
                <option>12:15-13:55</option> 

            </select>
            Martes:
            <select name="martes">
                <option selected> Seleccionar</option>
                <option>7:00-8:40</option> 
                <option>8:45-10:25</option> 
                <option>10:30-12:10</option>
                <option>12:15-13:55</option> 

            </select>
            Miercoles:
            <select name="miercoles">
                <option selected> Seleccionar</option>
                <option>7:00-8:40</option> 
                <option>8:45-10:25</option> 
                <option>10:30-12:10</option>
                <option>12:15-13:55</option> 

            </select>
            Jueves:
            <select name="jueves">
                <option selected> Seleccionar</option>
                <option>7:00-8:40</option> 
                <option>8:45-10:25</option> 
                <option>10:30-12:10</option>
                <option>12:15-13:55</option> 

            </select>
            Viernes:
            <select name="viernes">
                <option selected> Seleccionar</option>
                <option>7:00-7:50</option> 
                <option>7:55-8:45</option> 
                <option>8:50-9:35</option> 
                <option>9:40-10:30</option> 
                <option>10:30-11:20</option>
                <option>11:20-12:10</option> 
                <option>12:15-13:05</option> 
                <option>13:05-13:55</option> 

            </select>
            <br>
            Carrera:
            <input type="text"  name="idCarrera" readonly value="<%= idCarrera%>">



            <input type="submit" value="Agregar">



        </form>
    </body>
</html>


