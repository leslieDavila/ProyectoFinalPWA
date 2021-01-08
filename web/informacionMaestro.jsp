<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Carrera"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Información</title>
    </head>
    <body>

        <% // Maestro maestro= new Maestro();

            // String idMaestro= request.getParameter("idMaestro");
            // Maestro ma =maestro.detallesMaestro(idMaestro);
            //Traer los datos del maestro
            Maestro ma = (Maestro) request.getAttribute("maestro");
            //Traer las carreras
            ArrayList<Carrera> listaCarreras = Carrera.Carreras();

        %>


        <h2> Información de Maestro </h2>
         <form action="asignarCarrera" method="POST">
        Id maestro : <input  readonly="readonly"  type="text" name="id" value="<%= ma.getIdMaestro()%>"><br>
        Nombre maestro : <input  readonly="readonly" type="text"  value="<%= ma.getNombreMaestro()%>"><br>
        Correo: <input type="text"  readonly="readonly"  value="<%= ma.getCorreo()%>"><br>
        Teléfono: <input type="text"  readonly="readonly" value="<%= ma.getTelefono()%>"><br>
        Departamento: <input type="text"  readonly="readonly" value="<%= ma.getDepartamento()%>"><br>

      
            <h2> Asignar Carrera </h2>
            <select name="carrera">

                <option value="0"> SELECCIONE CARRERA </option>
                <% try {
                        for (Carrera li : listaCarreras) {%>
                <option name="idCarrera" value="<%= li.getIdCarrera()%>"><%= li.getNombreCarrera()%></option>

                <% }
                    } catch (Exception e) {
                        System.out.println(e);
                    }%>

            </select>
            <input type="submit" name="asignar"value="Aceptar">

        </form>

    </body>
</html>
