/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Gansi
 */
public class DatabaseConnection {

    // Configuración de la conexión
    private static final String URL = "jdbc:mysql://localhost:3306/businesshealthdb";  // base de datos
    private static final String USER = "root";  //usuario
    private static final String PASSWORD = "123456";  //contraseña

    public static Connection getConnection() {
        Connection connection = null;
        try {
            // Cargar el driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establecer la conexión
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexion exitosa a la base de datos.");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error en la conexion a la base de datos.");
            e.printStackTrace();
        }
        return connection;
    }

    public static void main(String[] args) {
        // Probar la conexión
        Connection conn = getConnection();
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

