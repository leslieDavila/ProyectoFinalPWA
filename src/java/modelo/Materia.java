/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author karen
 */
public class Materia {
    
    private String idMateria, nombreMateria, semestre, creditos, ht, hp, idCarrera;

    public String getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(String idCarrera) {
        this.idCarrera = idCarrera;
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

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getCreditos() {
        return creditos;
    }

    public void setCreditos(String creditos) {
        this.creditos = creditos;
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
    
    //CREAR MATERIA
   
    public static int registrar(Materia m) {
        int status = 0;
        try {
            Connection con = JavaDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into MATERIA(IDMATERIA,NOMBREMATERIA,SEMESTRE,CREDITOS, HT, HP,IDCARRERA) values (?,?,?,?,?,?,?)");
            ps.setString(1, m.getIdMateria());
            ps.setString(2, m.getNombreMateria());
            ps.setString(3, m.getSemestre());
            ps.setString(4, m.getCreditos());
            ps.setString(5, m.getHt());
            ps.setString(6, m.getHp());
            ps.setString(7, m.getIdCarrera());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    
     //LEER MATERIAS
    public static List<Materia> getAllMaterias(String idCarrera) {
        List<Materia> list = new ArrayList<Materia>();

        try {
            Connection con = JavaDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select idMateria, nombreMateria, semestre, creditos, ht, hp from MATERIA where idCarrera='"+idCarrera+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Materia m = new Materia();

                m.setIdMateria(rs.getString(1));
                m.setNombreMateria(rs.getString(2));
                m.setSemestre(rs.getString(3));
                m.setCreditos(rs.getString(4));
                m.setHt(rs.getString(5));
                m.setHp(rs.getString(6));

                list.add(m);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    //ELIMINAR
    public static int EliminarMateria(String idMateria) {
        int status = 0;
        try {
            Connection con = JavaDB.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from MATERIA where IDMATERIA=?");
            ps.setString(1, idMateria);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    //MATERIA POR ID
    public static Materia getMateria(String idMateria) {
        Materia m = new Materia();

        try {
            Connection con = JavaDB.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT idMateria, nombreMateria, semestre, creditos, ht, hp,idCarrera FROM MATERIA WHERE IDMATERIA=?");
            ps.setString(1, idMateria);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                m.setIdMateria(rs.getString(1));
                m.setNombreMateria(rs.getString(2));
                m.setSemestre(rs.getString(3));
                m.setCreditos(rs.getString(4));
                m.setHt(rs.getString(5));
                m.setHp(rs.getString(6));
                m.setIdCarrera(rs.getString(7));
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return m;
    }
   

    //ACTUALIZAR
    public static int modificarMateria(Materia m) {
        int status = 0;
        try {
            Connection con = JavaDB.getConnection();
            String sql="update MATERIA set nombreMateria=?, semestre=? , CREDITOS=?, HT=?, HP=?, idCarrera=? WHERE IDMATERIA=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, m.getNombreMateria());
            ps.setString(2, m.getSemestre());
            ps.setString(3, m.getCreditos());
            ps.setString(4, m.getHt());
            ps.setString(5, m.getHp());
            ps.setString(6, m.getIdCarrera());
            ps.setString(7, m.getIdMateria());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
   
    
}
