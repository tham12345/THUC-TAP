package com.nganhangmau.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lonely
 */
public class ConnectDB {

    private Connection conn = null;
    private Statement stmt = null;
    private final ResultSet rs = null;

    protected void hasDriver() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Invalid Driver!! Please check this driver...");
        }

    }
    protected Connection openConnect() {
        try {
            if (conn == null) {
                hasDriver();
                String url = "jdbc:mysql://localhost/nganhangmau";
                conn = DriverManager.getConnection(url, "root", "");
            }
        } catch (SQLException e) {
            System.out.println("Error Connecton! Please check url or username and password of mysql!");
        }
        return conn;
    }

    protected Statement getStatement() {
        try {
            if (stmt == null) {
                stmt = openConnect().createStatement();
            }
        } catch (SQLException e) {
            System.out.println("Please check statement");
        }
        return stmt;
    }

    protected void closeConnect() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (rs != null & !rs.isClosed()) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException e) {
            System.out.println("Please check close connect, stmt, resutlset");
        }

    }

}