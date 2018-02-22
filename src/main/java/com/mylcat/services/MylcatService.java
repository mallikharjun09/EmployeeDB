package com.mylcat.services;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MylcatService {
    @RequestMapping("/")
    public String showHome() {
    	return "index";
    }
    @RequestMapping("home")
    public String home() {
    	return "index";
    }
    @RequestMapping("addEmployee")
    public String addEmployee() {
    	return "NewEmployee";
    }
}
