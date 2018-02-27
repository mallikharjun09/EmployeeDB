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
    
    @RequestMapping("addProject")
    public String addProject() {
    	return "NewProject";
    }
    
    @RequestMapping("getAllRole")
    public String showAllRoles() {
    	return "ShowAllRole";
    }
    
    @RequestMapping("getAllProjects")
    public String showAllProjects() {
    	return "ShowAllProjects";
    }
    
    @RequestMapping("updateRole")
    public String updateRole() {
    	return "UpdateRole";
    }
    
    @RequestMapping("updateProject")
    public String updateProject() {
    	return "UpdateProject";
    }
    
    
    @RequestMapping("assignTask")
    public String assignTask() {
    	return "AssignTask";
    }
    
    @RequestMapping("getAllAssignedTasks")
    public String showAllAssignedTasks() {
    	return "ShowAllAssignedTasks";
    }
    @RequestMapping("addModule")
    public String addModule() {
    	return "NewModule";
    }
    @RequestMapping("getAllModule")
    public String showAllModule() {
    	return "ShowAllModule";
    }
    @RequestMapping("updateModule")
    public String updateModule() {
    	return "UpdateModule";
    }
}
