package com.mylcat.services;


import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.ModuleDao;

import com.mylcat.Domain.Module;
import com.mylcat.Domain.Role;
import com.mylcat.Domain.Module;

@Controller
public class ModuleService {

	 @Autowired
    ModuleDao moduleDao;
	 
	 
	
	   
	 @RequestMapping(value="saveModule", method=RequestMethod.POST)
     public String addModule(@RequestParam int moduleId,@RequestParam String moduleName,@RequestParam int projectId,@RequestParam String projectName) {
    	
    	 Module module=new Module();
    	 module.setModuleId(moduleId);
    	 module.setModuleName(moduleName);
    	 module.setProjectId(projectId);
    	 module.setProjectName(projectName);
    	
		moduleDao.saveModule(module);
    	 return "redirect:getAllModule";
     }
	 
	    @RequestMapping(value="showAllModule")
	     public @ResponseBody String showAllModule() {
	    	 List<Module> moduleList=moduleDao.showAllModule();
	    	 return JSON.toJSONString(moduleList); 
	     }
	   
	    @RequestMapping(value="deleteModule")
	     public String deleteModule(@RequestParam int moduleId) {
	    	 Module module=moduleDao.findModuleById(moduleId);
	    	 moduleDao.deleteModule(module);
	    	 return "redirect:getAllModule";
	     }
	    @RequestMapping(value="editModule")
	    public String editModule(@RequestParam int moduleId,@RequestParam String moduleName,@RequestParam int projectId,@RequestParam String projectName) {
	    	 Module module=new Module();
	    	 module.setModuleId(moduleId);
	    	 module.setModuleName(moduleName);
	    	 module.setProjectId(projectId);
	    	 module.setProjectName(projectName);
	    	
	    	 moduleDao.saveModule(module);
	    	 return "redirect:getAllModule"; 
	     }
	    @RequestMapping(value="getprojectName")
	     public String getprojectName(@RequestParam int moduleId) {
	    	 Module module=moduleDao.findModuleById(moduleId);
	    	 return moduleDao.getprojectName(module);
	     }
	    
	
}
