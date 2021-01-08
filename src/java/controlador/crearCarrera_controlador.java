/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Carrera;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class crearCarrera_controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs*/
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();


}

@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        //objetos
        Carrera carrera = new Carrera();

        //obtener parametros
        String idCarrera = request.getParameter("idCarrera").toUpperCase();
        String nombreCarrera = request.getParameter("nombreCarrera").toUpperCase();
        String jefe=request.getParameter("jefe");

        carrera.setIdCarrera(idCarrera);
        carrera.setNombreCarrera(nombreCarrera);
        carrera.setJefe(jefe);

        int status = carrera.registrar(carrera);

        if (status > 0) {

            response.sendRedirect("inicioadmin.jsp");
        } else {
            out.println("No se realizo el registro");
        }

    }
        
        
        
    }

 
