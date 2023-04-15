package com.itu.exportation.databaseconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PostgresConnection {
    
  
    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/exportation", "postgres", "postgres");
        } catch (SQLException ex) {
            // Handle any errors
            ex.printStackTrace();
        }
        return conn;
    }
    
}
