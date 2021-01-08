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

/**
 *
 * @author karen
 */
public class Carrera {
    
    private String idCarrera, nombreCarrera, jefe, idMaestro;

    public String getIdMaestro() {
        return idMaestro;
    }

    public void setIdMaestro(String idMaestro) {
        this.idMaestro = idMaestro;
    }
    
    
        //Jefe de carrera
    public String getJefe() {
        return jefe;
    }

    public void setJefe(String jefe) {
        this.jefe = jefe;
    }
    


    public String getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(String idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getNombreCarrera() {
        return nombreCarrera;
    }

    public void setNombreCarrera(String nombreCarrera) {
        this.nombreCarrera = nombreCarrera;
    }
    
    
    //Inserta en la base de datos
     public static int registrar(Carrera m) {
        int status = 0;
        try {
            Connection con = JavaDB.getConnection();
            String sql="insert into carrera(idCarrera,nombreCarrera, idMaestro) values (?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, m.getIdCarrera());
            ps.setString(2, m.getNombreCarrera());
            ps.setString(3, m.getJefe());
            

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
     
     
     
     //CARRERA-MAESTRO
     
      public static int asignarCarrera(Carrera m) {
        int status = 0;
        try {
            Connection con = JavaDB.getConnection();
            String sql="insert into carreramaestro(idCarrera, idMaestro) values (?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, m.getIdCarrera());
            ps.setString(2, m.getIdMaestro());
            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
      
      
      //Me da todas las carreras
    public static ArrayList<Carrera> Carreras() {
        ArrayList<Carrera> listaCarreras = new ArrayList<Carrera>();

        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT * FROM CARRERA";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Carrera ca = new Carrera();
                
                ca.setIdCarrera(rs.getString(1));
                ca.setNombreCarrera(rs.getString(2));
                ca.setIdMaestro(rs.getString(3));
                listaCarreras.add(ca);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listaCarreras;

    }
    
    //Me las carreras por usuario
    public static ArrayList<Carrera> misCarreras(String jefe) {
        ArrayList<Carrera> misCarreras= new ArrayList<Carrera>();

        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT ca.IDCARRERA, ca.NOMBRECARRERA   from carrera ca, usuarios u, maestro ma where u.IDUSUARIO= ma.IDUSUARIO and ca.IDMAESTRO=ma.IDMAESTRO and u.USUARIO='"+jefe+"'";
         
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Carrera ca = new Carrera();
                
                ca.setIdCarrera(rs.getString(1));
                ca.setNombreCarrera(rs.getString(2));
             
                misCarreras.add(ca);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return misCarreras;

    }
     
     
    
    
}
