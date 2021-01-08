/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author karen
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Reporte {
    
    String idGrupo,idMateria, nombreMateria, grupo, aula, numAlumnos, idCarrera, 
            semestre, lunes, martes, miercoles, jueves, viernes, ht, hp, creditos;

    public String getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(String idGrupo) {
        this.idGrupo = idGrupo;
    }

    public String getIdMateria() {
        return idMateria;
    }

    public void setIdMateria(String idMateria) {
        this.idMateria = idMateria;
    }

    public String getNombreMateria() {
        return nombreMateria;
    }

    public void setNombreMateria(String nombreMateria) {
        this.nombreMateria = nombreMateria;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    public String getAula() {
        return aula;
    }

    public void setAula(String aula) {
        this.aula = aula;
    }

    public String getNumAlumnos() {
        return numAlumnos;
    }

    public void setNumAlumnos(String numAlumnos) {
        this.numAlumnos = numAlumnos;
    }

    public String getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(String idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getLunes() {
        return lunes;
    }

    public void setLunes(String lunes) {
        this.lunes = lunes;
    }

    public String getMartes() {
        return martes;
    }

    public void setMartes(String martes) {
        this.martes = martes;
    }

    public String getMiercoles() {
        return miercoles;
    }

    public void setMiercoles(String miercoles) {
        this.miercoles = miercoles;
    }

    public String getJueves() {
        return jueves;
    }

    public void setJueves(String jueves) {
        this.jueves = jueves;
    }

    public String getViernes() {
        return viernes;
    }

    public void setViernes(String viernes) {
        this.viernes = viernes;
    }

    public String getHt() {
        return ht;
    }

    public void setHt(String ht) {
        this.ht = ht;
    }

    public String getHp() {
        return hp;
    }

    public void setHp(String hp) {
        this.hp = hp;
    }

    public String getCreditos() {
        return creditos;
    }

    public void setCreditos(String creditos) {
        this.creditos = creditos;
    }
    
    
    
    //Ver reporte por maestro
    public static ArrayList<Reporte> getReporte(String idMaestro) {
        ArrayList<Reporte> list = new ArrayList<Reporte>();
        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT G.IDGRUPO, G.IDMATERIA, M.NOMBREMATERIA,G.GRUPO, G.AULA, G.NUMALUMNOS, G.IDCARRERA, M.SEMESTRE, G.LUNES,G.MARTES,G.MIERCOLES,G.JUEVES,G.VIERNES, M.HT, M.HP, M.CREDITOS \n"
                    + "FROM GRUPO G, MAESTRO MA, CARRERA C, MATERIA M \n"
                    + "WHERE MA.IDMAESTRO = G.IDMAESTRO AND G.IDMATERIA = M.IDMATERIA AND G.IDCARRERA = C.IDCARRERA AND MA.IDMAESTRO=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idMaestro);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Reporte r = new Reporte();
                // clave grupo, clave materia, nombre materia, grupo, aula, no alum, idcarrera, semestre, horario, ht, tp, creditos

                r.setIdGrupo(rs.getString(1));
                r.setIdMateria(rs.getString(2));
                r.setNombreMateria(rs.getString(3));
                r.setGrupo(rs.getString(4));
                r.setAula(rs.getString(5));
                r.setNumAlumnos(rs.getString(6));
                r.setIdCarrera(rs.getString(7));
                r.setSemestre(rs.getString(8));
                r.setLunes(rs.getString(9));
                r.setMartes(rs.getString(10));
                r.setMiercoles(rs.getString(11));
                r.setJueves(rs.getString(12));
                r.setViernes(rs.getString(13));
                r.setHt(rs.getString(14));
                r.setHp(rs.getString(15));
                r.setCreditos(rs.getString(16));

                list.add(r);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    
}

