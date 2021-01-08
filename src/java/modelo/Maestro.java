/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author karen
 */

public class Maestro {

    private String idMaestro, nombreMaestro, correo, telefono, departamento, idUsuario;

    public String getIdMaestro() {
        return idMaestro;
    }

    public void setIdMaestro(String idMaestro) {
        this.idMaestro = idMaestro;
    }

    public String getNombreMaestro() {
        return nombreMaestro;
    }

    public void setNombreMaestro(String nombreMaestro) {
        this.nombreMaestro = nombreMaestro;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    //Me da los jefes
    public static ArrayList<Maestro> listaMaestro() {
        ArrayList<Maestro> listMaestro = new ArrayList<Maestro>();

        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT M.IDMAESTRO, M.NOMBREMAESTRO FROM MAESTRO M, USUARIOS U WHERE M.IDUSUARIO = U.IDUSUARIO AND U.TIPO=2 ";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Maestro m = new Maestro();

                m.setIdMaestro(rs.getString(1));
                m.setNombreMaestro(rs.getString(2));

                listMaestro.add(m);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listMaestro;

    }

    //Me da todos los maestros
    public static ArrayList<Maestro> Maestros() {
        ArrayList<Maestro> listMaestro = new ArrayList<Maestro>();

        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT * FROM MAESTRO";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Maestro m = new Maestro();

                m.setIdMaestro(rs.getString(1));
                m.setNombreMaestro(rs.getString(2));

                listMaestro.add(m);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listMaestro;

    }
    
     //Me da los maestros por carrera
    public static ArrayList<Maestro> carreraMaestros(String idCarrera) {
        ArrayList<Maestro> listMaestro = new ArrayList<Maestro>();

        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT ma.IDMAESTRO, ma.NOMBREMAESTRO from maestro ma, carreramaestro c, carrera ca where ma.IDMAESTRO=c.IDMAESTRO and ca.IDCARRERA=c.IDCARRERA and ca.IDCARRERA='"+idCarrera+"'";

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Maestro m = new Maestro();

                m.setIdMaestro(rs.getString(1));
                m.setNombreMaestro(rs.getString(2));

                listMaestro.add(m);

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listMaestro;

    }


    //Información de maestro
    public static Maestro detallesMaestro(String idMaestro) {

        Maestro m = new Maestro();
        try {
            Connection con = JavaDB.getConnection();
            String sql = "SELECT * FROM MAESTRO WHERE idMaestro=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idMaestro);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                m.setIdMaestro(rs.getString(1));
                m.setNombreMaestro(rs.getString(2));
                m.setCorreo(rs.getString(3));
                m.setTelefono(rs.getString(4));
                m.setDepartamento(rs.getString(5));
                m.setIdUsuario(rs.getString(6));

            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return m;

    }
    
    //Me devuelve el nombre del maestro
  public String getMaestro(String usuario) throws SQLException {

        ResultSet rs;
        String maestro = "";

        String sql = "select ma.NOMBREMAESTRO from MAESTRO ma, usuarios u where ma.IDUSUARIO=u.IDUSUARIO and u.USUARIO='"+usuario+"'";
        Connection con = JavaDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        rs = ps.executeQuery();

        while (rs.next()) {
            maestro = rs.getString(1);
        }
        JavaDB.getConnection().close();
        return maestro;
    }
  

  
  //Me devuelve el id del maestro
  public String idMaestro(String usuario) throws SQLException {

        ResultSet rs;
        String maestro = "";

        String sql = "select ma.idMaestro from MAESTRO ma, usuarios u where ma.IDUSUARIO=u.IDUSUARIO and u.USUARIO='"+usuario+"'";
        Connection con = JavaDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        rs = ps.executeQuery();

        while (rs.next()) {
            maestro = rs.getString(1);
        }
        JavaDB.getConnection().close();
        return maestro;
    }
  
  
  

  
  


}
