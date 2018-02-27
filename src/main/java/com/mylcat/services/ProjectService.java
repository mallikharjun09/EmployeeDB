package com.mylcat.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.ProjectDao;

import com.mylcat.Domain.Project;

@Controller
public class ProjectService
{
	@Autowired
    ProjectDao proDao;

	 @RequestMapping(value="saveProject", method=RequestMethod.POST)
    public String addProject(@RequestParam String projectName,@RequestParam String projectHead,@RequestParam String clientName, @RequestParam String clientAddress,@RequestParam String startDate)
    {
        Project pro = new Project();
        pro.setProjectName(projectName);
        pro.setProjectHead(projectHead);
        pro.setClientName(clientName);
        pro.setClientAddress(clientAddress);
        pro.setStartDate(startDate);
        proDao.saveProject(pro);
        return "redirect:getAllProjects";
    }
   
	 @RequestMapping(value="showAllPro")
     public @ResponseBody String showAllEmp() {
    	 List<Project> proList=proDao.showAllProjects();
    	 return JSON.toJSONString(proList); 
     }
	 
     @RequestMapping(value="findProject")
     public @ResponseBody String findProject(@RequestParam int projectId) {
    	 Project pro=proDao.findProjectById(projectId);
    	 return JSON.toJSONString(pro); 
     }
   
	 @RequestMapping(value="editProject")
    public String editEmployee(@RequestParam int projectId,@RequestParam String projectName,@RequestParam String projectHead,@RequestParam String clientName,@RequestParam String clientAddress,@RequestParam String startDate)
    {
        Project pro = proDao.findProjectById(projectId);
        pro.setProjectName(projectName);
        pro.setProjectHead(projectHead);
        pro.setClientName(clientName);
        pro.setClientAddress(clientAddress);
        pro.setStartDate(startDate);
        proDao.saveProject(pro);
        return "redirect:getAllProjects";
    }

	 @RequestMapping(value="deleteProject")
    public  String deleteProject(@RequestParam int projectId)
    {
        Project pro = proDao.findProjectById(projectId);
        proDao.deleteProject(pro);
        return "redirect:getAllProjects";
    }
}
