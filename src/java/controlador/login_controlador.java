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
import javax.servlet.http.HttpSession;
import modelo.Login;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class login_controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        

        HttpSession sesion = request.getSession();
        Login log = new Login();//Modelo
        
        RequestDispatcher rd;

        if (request.getParameter("ingresar") != null) {

            String usuario = request.getParameter("usuario");
            String pass = request.getParameter("pass");
            
            log.setUsuario(usuario);
            log.setContrasena(pass);

            try {
                int tipo = log.iniciarSesion(usuario, pass);
                

                switch (tipo) {
                    case 1:

                        sesion.setAttribute("usuario", usuario);
                        sesion.setAttribute("tipo", "1");
                        
                        rd = request.getRequestDispatcher("inicioadmin.jsp");
                        rd.forward(request, response);
                        //response.sendRedirect("inicioadmin.jsp"); 
                        break;

                    case 2:
                        sesion.setAttribute("usuario", usuario);//envio el usuario
                        sesion.setAttribute("tipo", "2");//envio el tipo

                        request.setAttribute("usuario", usuario);//mandar el usuarios
                        rd = request.getRequestDispatcher("jefe_controlador");
                        rd.forward(request, response);

                        break;
                    case 3:
                        sesion.setAttribute("usuario", usuario);
                        sesion.setAttribute("tipo", "3");
                        request.setAttribute("usuario", usuario);
                        rd = request.getRequestDispatcher("iniciomaestro.jsp");
                        rd.forward(request, response);

                        break;

                    default:
                        out.write("usuario y/o contraseñas incorrectas");

                }

            } catch (Exception e) {
                System.out.println(e);
            }

        }

        if (request.getParameter("cerrar") != null) {
            sesion.invalidate();
            request.getSession().invalidate();
            rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

    }

   
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
