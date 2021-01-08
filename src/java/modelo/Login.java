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

/**
 *
 * @author karen
 */
public class Login {
    private String usuario, contrasena;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
  
    
     public int iniciarSesion(String usuario, String contrasena) throws SQLException {
        ResultSet rs;
        int tipo = 0;

        String sql = "select TIPO from USUARIOS where USUARIO='" + usuario + "' and CONTRASENA='" + contrasena+ "'";
        Connection con = JavaDB.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        rs = ps.executeQuery();

        while (rs.next()) {
            tipo = rs.getInt(1);

        }
        JavaDB.getConnection().close();

        return tipo;
    }
    
}
