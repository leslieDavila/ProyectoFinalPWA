/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Carrera;
import modelo.Maestro;
import modelo.Materia;
/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class verMaterias_controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        //Recivo la carrera
        String idC = request.getParameter("idCarrera");

        //Para la sesión
        HttpSession sesion = request.getSession();

        //objetos 
        Maestro maestro = new Maestro();
        Carrera carreras = new Carrera();
        Materia materia = new Materia();

        String usuario = "";

        //Donde voy a guardar las materias
        List<Materia> Materias = new ArrayList<Materia>();

        if (sesion != null) {
            if (sesion.getAttribute("usuario") != null && sesion.getAttribute("tipo") != null) {
                usuario = (String) sesion.getAttribute("usuario");
                String tipo = (String) sesion.getAttribute("tipo");
                //obtener el nombre 
                String name = maestro.getMaestro(usuario);
                request.setAttribute("usuario", name);
                maestro.setNombreMaestro(name);
                ArrayList<Carrera> misCarreras = new ArrayList<Carrera>();
                //obtener parametros
                String jefe = request.getParameter("usuario");
                misCarreras = carreras.misCarreras(usuario);//recivo
                request.setAttribute("misCarreras", misCarreras);//envio a vista
                ///////////////////////////////////////////////////////////
                //La carrera la asigno a la sesion
                String idCarrera = (String) sesion.getAttribute(idC);
                Materias = materia.getAllMaterias(idC);
                request.setAttribute("listaMaterias", Materias);

                String id = request.getParameter("idMateria");

                if (id != null) {
                    request.setAttribute("idMateria", materia.modificarMateria(materia));
                }

            } else {
                response.sendRedirect("index.jsp");
            }

            //////////////////////////////////////////////////////////////
            request.setAttribute("idCarrera", idC);

            RequestDispatcher rd = request.getRequestDispatcher("verMaterias.jsp");
            rd.forward(request, response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(verMaterias_controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(verMaterias_controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
