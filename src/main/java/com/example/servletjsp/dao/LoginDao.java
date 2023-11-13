package com.example.servletjsp.dao;

import com.example.servletjsp.bean.LoginBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {


    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        Class.forName("org.h2.Driver");
        try (Connection connection = DriverManager.getConnection("jdbc:h2:mem:test;DB_CLOSE_DELAY=-1", "houcem", "")) {

            // Create table and insert sample data if not already done
            createTable(connection);
            insertSampleData(connection);

            // Step 2: Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement("select * from login where username = ? and password = ?");
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // Process SQL exception
            printSQLException(e);
        }
        return status;
    }

    private void createTable(Connection connection) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(
                "CREATE TABLE IF NOT EXISTS login (id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(255), password VARCHAR(255))"
        );
        preparedStatement.executeUpdate();
    }

    private void insertSampleData(Connection connection) throws SQLException {
        // Insert sample data into the login table
        PreparedStatement preparedStatement = connection.prepareStatement(
                "INSERT INTO login (username, password) VALUES (?, ?)"
        );
        preparedStatement.setString(1, "houcem");
        preparedStatement.setString(2, "houcempwd");
        preparedStatement.executeUpdate();
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}