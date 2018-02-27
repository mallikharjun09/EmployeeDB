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
    
    @RequestMapping("getAll")
    public String showAllEmployees() {
    	return "ShowAllEmployees";
    }
    
    @RequestMapping("updateEmployee")
    public String updateEmployee() {
    	return "UpdateEmployee";
    }
    @RequestMapping("addRole")
    public String addRole() {
    	return "NewRole";
    }
    
    @RequestMapping("getAllRole")
    public String showAllRoles() {
    	return "ShowAllRole";
    }
    
    @RequestMapping("updateRole")
    public String updateRole() {
    	return "UpdateRole";
    }
    
    @RequestMapping("assignTask")
    public String assignTask() {
    	return "AssignTask";
    }
    
    @RequestMapping("getAllAssignedTasks")
    public String showAllAssignedTasks() {
    	return "ShowAllAssignedTasks";
    }
}
