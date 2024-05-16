package com.example.webjava;

import java.sql.*;

public class LoginBean{
    private Connection connection;

    public LoginBean() {
        String url = "jdbc:mysql://localhost:3306/fptaptech2024";
        String username = "root";
        String password = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkLogin(String username, String password){
        try {
            // Kiểm tra thông tin đăng nhập từ cơ sở dữ liệu
            String query = "SELECT * FROM Accounts WHERE username=? AND password=?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

