package com.emergentes.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {

    static public String driver = "com.mysql.jdbc.Driver";
    static public String url = "jdbc:mysql://localhost:3306/bd_cursos";
    static public String user = "root";
    static public String password = "";

    protected Connection conn = null;

    public ConexionDB() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            // Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error en el driver: " + ex.getMessage());
        } catch (SQLException ex) {
            // Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error al conectar: " + ex.getMessage());
        }
    }
    
    public Connection conectDB() {
        return conn;
    }
    
    public void disconnectBD() {
        try {
            conn.close();
        } catch (SQLException ex) {
            // Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error al cerrar: " + ex.getMessage());
        }
    }
}
