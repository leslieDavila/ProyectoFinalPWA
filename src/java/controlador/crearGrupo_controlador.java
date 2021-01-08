package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Grupo;
import modelo.Materia;

/**
 *
 * @author Leslie Karen Davila Gallegos
 */
public class crearGrupo_controlador extends HttpServlet {

  
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
        Materia materia= new Materia();
        Grupo grup= new Grupo();
        String idGrupo, idMateria,idMaestro,idCarrera,periodo,turno, grupo,numAlumnos,aula,lunes, martes, miercoles, jueves, viernes;
 

        //obtener parametros
        idGrupo= request.getParameter("idGrupo").toUpperCase();
        idMateria=request.getParameter("idMateria");
        idMaestro=request.getParameter("idMaestro");
        idCarrera= request.getParameter("idCarrera").toUpperCase();
        periodo=request.getParameter("periodo");
        turno=request.getParameter("turno");
        grupo=request.getParameter("grupo").toUpperCase();
        numAlumnos=request.getParameter("numAlumnos");
        aula = request.getParameter("aula");
        lunes = request.getParameter("lunes");
        martes = request.getParameter("martes");
        miercoles= request.getParameter("miercoles");
        jueves= request.getParameter("jueves");
        viernes = request.getParameter("viernes");
        
        //colocar parametros
        grup.setIdGrupo(idGrupo);
        grup.setIdMateria(idMateria);
        grup.setIdMaestro(idMaestro);
        grup.setIdCarrera(idCarrera);
        grup.setPeriodo(periodo);
        grup.setTurno(turno);
        grup.setGrupo(grupo);
        grup.setNumAlumnos(numAlumnos);
        grup.setAula(aula);
        grup.setLunes(lunes);
        grup.setMartes(martes);
        grup.setMiercoles(miercoles);
        grup.setJueves(jueves);
        grup.setViernes(viernes);
       

        int status = Grupo.registrarGrupo(grup);

        if (status > 0) {
            //out.println("Registro exitoso");
            response.sendRedirect("jefe_controlador");
        } else {
            out.println("No se realizo el registro");
            response.sendRedirect("jefe_controlador");
            
        }
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
