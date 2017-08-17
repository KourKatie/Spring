package com.test.util.Controller;

import com.model.DAO;
import com.model.DAOcredentials;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.ArrayList;

@Controller
public class HomeController {

        @RequestMapping(value = "/")

        public ModelAndView items() {

            try {
                Class.forName("com.mysql.jdbc.Driver");
                //DriveManager.registerDriver(new com.mysql.jdbc.Driver());
                Connection mysqlConnection;
                mysqlConnection = DriverManager.getConnection(
                        DAOcredentials.DB_ADDRESS,
                        DAOcredentials.USERNAME,
                        DAOcredentials.PASSWORD
                );

                //create the db statement
                String readItemCommand = "select Name, Description, Quantity, Price from items";

                Statement readItems = mysqlConnection.createStatement();

                ResultSet results = readItems.executeQuery(readItemCommand); // execute the statement
                //arraylist of customers
                ArrayList<coffeeItems> coffeeList = new ArrayList<coffeeItems>();
                //map from the resultset to the arraylist
                while (results.next()) {
                    coffeeItems temp = new coffeeItems(results.getString(1), results.getString(2),
                            results.getInt(3), results.getDouble(4));

                    coffeeList.add(temp);
                }
                 return new ModelAndView("welcome","cList",coffeeList);

            } catch (Exception e) {
                e.printStackTrace();
            }

            return null;

        }

        @RequestMapping("/userform")

    public ModelAndView userform() {
        return new ModelAndView("form", "inst", "Register");
    }

    @RequestMapping("/addUser")
    public ModelAndView addUser(
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("email") String email,
            @RequestParam("company") String company,
            @RequestParam("phone") String phone,
            @RequestParam("birthday") String birthday,
            @RequestParam("password") String password,
            @RequestParam("conpassword") String conpassword

    ) {
        boolean result = DAO.addUser(firstname, lastname, email, password);
        if (result == false) {
            //still have to write this view
            return new ModelAndView("error", "errorMsg", "Failure to Add User");
        }
        ModelAndView mv = new ModelAndView("formresponse");
        mv.addObject("firstname", firstname);
        mv.addObject("lastname", lastname);
        mv.addObject("email", email);
        mv.addObject("company", company);
        mv.addObject("phone", phone);
        mv.addObject("birthday", birthday);
        mv.addObject("password", password);
        mv.addObject("conpassword", conpassword);

        return mv;
    }

}