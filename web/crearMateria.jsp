<%-- 
 
    Author     : Leslie Karen Davila Gallegos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Registro Materias</title>
    </head>
    <body>
        
        
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>
        
        <h1>Registrar Materia</h1>
        <% String idCarrera= request.getParameter("idCarrera"); %>
        
        <form action="crearMateria_controlador" method="post">
            <label> Clave de Materia</label>
            <input type="text" name="idMateria" required=""> 

            <label>Nombre Materia</label>

            <input type="text" name="nombreMateria" required="">
            
            Semestre:
            <select name="semestre">
                <option selected value="0"> Seleccionar</option>
                <option >1</option> 
                <option >2</option> 
                <option >3</option>
                <option >4</option> 
                <option >5</option> 
                <option >6</option> 
                <option >7</option> 
                <option >8</option> 
                <option >9</option> 
            </select>

            <br>
            Creditos : 
            <select name="creditos">
                <option selected value="0"> Seleccionar</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            Horas teoria:
            <select name="horasTeoria">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            Horas practica:
            <select name="horasPractica">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            
            <input type="text"  name="idCarrera" readonly value="<%= idCarrera%>">
            
           
            
             <input type="submit" value="Agregar">



        </form>
    </body>
</html>

