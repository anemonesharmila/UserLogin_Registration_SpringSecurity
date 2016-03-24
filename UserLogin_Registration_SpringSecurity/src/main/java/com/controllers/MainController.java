package com.controllers;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
    public ModelAndView defaultPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "You are logged in");
        model.addObject("message", "Take a look around your profile!");
        model.setViewName("profile");
        return model;

    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Login Form - Database Authentication");
//        model.addObject("message", "This page is for ROLE_ADMIN only!");
        model.setViewName("admin");
        return model;

    }

    @RequestMapping(value = "/EditUserDetails", method = RequestMethod.GET)
    public ModelAndView EditUserDetails() {

        ModelAndView model = new ModelAndView();

        model.setViewName("EditUserDetails");
        return model;

    }

    @RequestMapping(value = "/SignIn", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("SignIn");

        return model;

    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            model.addObject("Username", userDetail.getUsername());
        }

        model.setViewName("403");
        return model;

    }


    @RequestMapping(value = "/Tutorial",method = RequestMethod.GET)
    public ModelAndView getTutorials()
    {
        ModelAndView model=new ModelAndView();
        model.setViewName("Tutorial");
        return model;
    }

    @RequestMapping(value = "/Computer",method = RequestMethod.GET)
    public ModelAndView getComputerPage()
    {
        ModelAndView model=new ModelAndView();
        model.setViewName("Computer");
        return model;
    }


    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contactPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("contact");
        return model;

    }
    @RequestMapping(value = "/introduction", method = RequestMethod.GET)
    public ModelAndView IntroPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("introduction");
        return model;

    }
    @RequestMapping(value = "/signinboot", method = RequestMethod.GET)
    public ModelAndView BootPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("signinboot");
        return model;

    }
    @RequestMapping(value = "/LatestNews", method = RequestMethod.GET)
    public ModelAndView LatestNewsPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("LatestNews");
        return model;

    }

}