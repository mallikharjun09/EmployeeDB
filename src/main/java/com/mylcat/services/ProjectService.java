package com.mylcat.services;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.ProjectDao;
import com.mylcat.Domain.Project;

public class ProjectService
{

    ProjectDao proDao;

    public ProjectService()
    {
    }

    public String addEmployee(String projectName, String projectHead, String clientName, String clientAddress, String startDate)
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

    public String showAllProjects()
    {
        java.util.List proList = proDao.showAllProjects();
        return JSON.toJSONString(proList);
    }

    public String editEmployee(int projectId, String projectName, String projectHead, String clientName, String clientAddress, String startDate)
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

    public String deleteProject(int projectId)
    {
        Project pro = proDao.findProjectById(projectId);
        proDao.deleteProject(pro);
        return "redirect:getAllProjects";
    }
}
