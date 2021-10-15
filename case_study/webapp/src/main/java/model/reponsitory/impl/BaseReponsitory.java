package model.reponsitory.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseReponsitory {
    private Connection connection;
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama_management_mvc";
    private String jdbcUsername = "root";
    private String jdbcPassword = "724188duc";

    public BaseReponsitory() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}