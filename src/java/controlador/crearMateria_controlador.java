package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Materia;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class crearMateria_controlador extends HttpServlet {

  
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
        processRequest(request, response);
        
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        processRequest(request, response);
        

        
        //objetos
        Materia materia = new Materia();
        String idMateria, nombreMateria, semestre, creditos, ht, hp, idCarrera;

        //obtener parametros
        idMateria = request.getParameter("idMateria").toUpperCase();
        nombreMateria = request.getParameter("nombreMateria").toUpperCase();
        semestre = request.getParameter("semestre");
        creditos = request.getParameter("creditos");
        ht = request.getParameter("horasTeoria");
        hp = request.getParameter("horasPractica");
        idCarrera = request.getParameter("idCarrera");
        
        
        //colocar parametros
        materia.setIdMateria(idMateria);
        materia.setNombreMateria(nombreMateria);
        materia.setSemestre(semestre);
        materia.setCreditos(creditos);
        materia.setHt(ht);
        materia.setHp(hp);
        materia.setIdCarrera(idCarrera);

        int status = materia.registrar(materia);

        if (status > 0) {
            //out.println("Registro exitoso");
            response.sendRedirect("jefe_controlador");
        } else {
            out.println("No se realizo el registro");
        }
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
