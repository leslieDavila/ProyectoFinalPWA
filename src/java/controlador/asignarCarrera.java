/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Carrera;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class asignarCarrera extends HttpServlet {


  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         //objetos
        Carrera carrera = new Carrera();

        //obtener parametros
        String idMaestro= request.getParameter("id");
        String idCarrera = request.getParameter("carrera");

       
         carrera.setIdMaestro(idMaestro);
         carrera.setIdCarrera(idCarrera);
        
        int status = carrera.asignarCarrera(carrera);

        if (status > 0) {
            response.sendRedirect("verMaestros_controlador");
        }   
  
        
    }

}

