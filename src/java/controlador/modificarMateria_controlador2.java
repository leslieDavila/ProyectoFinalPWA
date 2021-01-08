/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Materia;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class modificarMateria_controlador2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          RequestDispatcher rd;

        String idMateria = request.getParameter("idMateria");
        String nombreMateria = request.getParameter("nombreMateria");
        String semestre = request.getParameter("semestre");
        String creditos = request.getParameter("creditos");
        String ht = request.getParameter("horasTeoria");
        String hp = request.getParameter("horasPractica");
        String idCarrera= request.getParameter("idCarrera");
        
        System.out.println(idMateria);
        System.out.println(nombreMateria);
        System.out.println(semestre);
        System.out.println(creditos);
        System.out.println(ht);
        System.out.println(hp);
        System.out.println(idCarrera);

        Materia m = new Materia();

        m.setIdMateria(idMateria);
        m.setNombreMateria(nombreMateria);
        m.setSemestre(semestre);
        m.setCreditos(creditos);
        m.setHt(ht);
        m.setHp(hp);
        m.setIdCarrera(idCarrera);

        int status = Materia.modificarMateria(m);
        if (status > 0) {
             request.setAttribute("idCarrera", idCarrera);//mandar idCarrera
             rd = request.getRequestDispatcher("verMaterias_controlador");
             rd.forward(request, response);
             //response.sendRedirect("verMaterias_controlador");
        } else {
            out.println("No se guardaron los cambios");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
