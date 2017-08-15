package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld() {
        String dbAddress = "jdbc:mysql://localhost:3306/coffeeshopdb";
        String username = "root";
        String password = "Michigan33";
        try {
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            //DriveManager.registerDriver(new com.mysql.jdbc.Driver());

            //create the db connection oject
            Connection mysqlConnection;
            mysqlConnection = DriverManager.getConnection(dbAddress, username, password);

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
            return new ModelAndView("welcome", "cList", coffeeList);
            //return new ModelAndView("welcome", "message", "Welcome to JAVA CoffeeHouse");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

        @RequestMapping("/userform")

    public ModelAndView userform() {
        return new ModelAndView("form", "inst", "Register");
    }

    @RequestMapping("/formhandler")
    public ModelAndView formhandler(
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("email") String email,
            @RequestParam("company") String company,
            @RequestParam("phone") String phone,
            @RequestParam("birthday") String birthday,
            @RequestParam("latte") String latte,
            @RequestParam("frappe") String frappe,
            @RequestParam("irishcoffee") String irishcoffee,
            @RequestParam("americano") String americano,
            @RequestParam("icedcoffee") String icedcoffee,
            @RequestParam("espresso") String espresso,
            @RequestParam("regularcoffee") String regularcoffee,
            @RequestParam("password") String password,
            @RequestParam("conpassword") String conpassword

    ) {
        ModelAndView mv = new ModelAndView("formresponse");
        mv.addObject("firstname", firstname);
        mv.addObject("lastname", lastname);
        mv.addObject("email", email);
        mv.addObject("company", company);
        mv.addObject("phone", phone);
        mv.addObject("birthday", birthday);
        mv.addObject("latte", latte);
        mv.addObject("frappe", frappe);
        mv.addObject("irishcoffee", irishcoffee);
        mv.addObject("americano", americano);
        mv.addObject("icedcoffee", icedcoffee);
        mv.addObject("espresso", espresso);
        mv.addObject("regularcoffee", regularcoffee);
        mv.addObject("password", password);
        mv.addObject("conpassword", conpassword);

        return mv;
    }

}