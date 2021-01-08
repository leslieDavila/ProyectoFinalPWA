/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

/**
 *
 * @author karen
 */
public class JavaDB {
    
    //CONEXION A LA BD
    public static Connection getConnection() {

        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/proyecto?zeroDateTimeBehavior=convertToNull";
        String user = "root";
        String pass = "";

        

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);

        } catch (Exception e) {
            System.out.println(e);
        }
        return con;

    }
    
}
