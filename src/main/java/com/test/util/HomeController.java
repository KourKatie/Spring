package com.test.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld() {
        return new ModelAndView("welcome","message","Welcome to JAVA CoffeeHouse");
    }

    @RequestMapping("/userform")

    public ModelAndView userform() {
        return new ModelAndView("form","inst","Register");
    }

    @RequestMapping("/formhandler")
    public ModelAndView formhandler(
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("email") String email,
            @RequestParam("company") String company,
            @RequestParam("phone") String phone,
            @RequestParam("birthday") String birthday
    ) {
        ModelAndView mv = new ModelAndView("formresponse");
        mv.addObject("firstname", firstname);
        mv.addObject("lastname", lastname);
        mv.addObject("email", email);
        mv.addObject("company", company);
        mv.addObject("phone", phone);
        mv.addObject("birthday", birthday);
        return mv;
    }
}