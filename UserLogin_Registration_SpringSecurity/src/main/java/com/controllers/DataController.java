package com.controllers;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.model.User;
import com.services.UserDaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by sharmila on 12/18/2015.
 */
@Controller
public class DataController {
    @Autowired
    UserDaoService userDaoService;



    @RequestMapping("/signUp")
    public ModelAndView getRegisterForm(@ModelAttribute("user") User user,
                                        BindingResult result) {

        return new ModelAndView("signUp");

    }



    @RequestMapping("/saveUser")
    public ModelAndView saveUserData(@ModelAttribute("user") User user,
                                     BindingResult result) {

        userDaoService.insert(user);
        System.out.println("Save User Data");
        return new ModelAndView("redirect:/SignIn");

    }

}
