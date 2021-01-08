<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page import="modelo.Maestro"%>
<%@page import="modelo.JavaDB"%>
<%@page import="modelo.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controlador.login_controlador"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Signika:wght@300;500;700&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Inicio</title>
    </head>
    <body>
        <%
         //Sesion activa
            Maestro maestro=new Maestro();

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    String usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");
                    
                    //obtener el nombre
                    String name= maestro.getMaestro(usuario);
                    
                    maestro.setNombreMaestro(name);
                    
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
         %>
        <nav >

            <a clas="Azul-3" href="inicioadmin.jsp">Inicio</a>
            <a clas="Azul-3" href="seleccionarJefe">Agregar Carrera</a>
            <a clas="Azul-3" href="verMaestros_controlador">Profesores</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>
        </nav> 
        
        
        <h2 class="Azul-5" Style="font-size:4rem;">¡BIENVENIDO<span class="Azul-2"> ADMINISTRADOR </span>!</h2>

    </body>
</html>