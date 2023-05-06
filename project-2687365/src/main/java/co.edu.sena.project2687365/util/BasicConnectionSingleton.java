package util;

import java.sql.*;

public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/Neo?serverTimezone=America/Bogota";
    private static String user = "Andres";
    private static String pass = "andres506320";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user,pass);
        }
        return conn;
    }
} // BasicConnectionSingleton