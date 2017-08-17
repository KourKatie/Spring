package com.model;

import com.test.util.Controller.coffeeItems;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by Katie on 8/16/2017.
 */
public class DAO {

    public static boolean addUser (
            String firstname,
            String lastname,
            String email,
            String password
    ) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(
                    DAOcredentials.DB_ADDRESS,
                    DAOcredentials.USERNAME,
                    DAOcredentials.PASSWORD
            );

            String addUserCommand = "INSERT INTO users " +
                    "(firstname, lastname, email, password) " +
                    "VALUES ('" +
                    firstname + "', '" +
                    lastname + "', '" +
                    email + "', '" +
                    password + "')";
            System.out.println("SQL Query " + addUserCommand);

            Statement st = mysqlConnection.createStatement();// creates the statement

            int result = st.executeUpdate(addUserCommand);// executes the statement
            // array list of customers

            //if (result == 1)
            return true;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return false; //null result indicates an issue
        }
    }

}

