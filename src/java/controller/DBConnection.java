package controller;

import java.sql.*;
import model.Food;

public class DBConnection {

    public boolean insertNewFood(Food food) {
        boolean result = false;
        Connection connection = null;
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/foodlab",
                    "root", "");

            Statement statement;
            statement = connection.createStatement();
           
            String query = "INSERT INTO Khao"
                    + "(ID, Khao, Price)"
                    + "VALUES('" + food.getId() + "'," + "'"+ food.getName() + "'," +"'"+ food.getPrice();
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;

    }
}