package com.mylcat.services;


import java.util.LinkedList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.TaskAssignDao;
import com.mylcat.Dao.EmployeeDao;
import com.mylcat.Domain.TaskAssign;
import com.mylcat.Domain.Employee;


@Controller
public class TaskAssignService {
     @Autowired
     TaskAssignDao taskAssignDao;
     @Autowired
     EmployeeDao empDao;
     
     @RequestMapping(value="assignTask", method=RequestMethod.POST)
     public String assignTask(@RequestParam String taskName,@RequestParam int empId,@RequestParam String startDate,@RequestParam String startTime,@RequestParam String endDate,@RequestParam String endTime) {
    	 TaskAssign taskAssign=new TaskAssign();
    	 taskAssign.setTaskName(taskName);
    	 taskAssign.setEmpId(empId);
    	 taskAssign.setEndDate(endDate);
    	 taskAssign.setEndTime(endTime);
    	 taskAssign.setStartDate(startDate);
    	 taskAssign.setStartTime(startTime);
    	 taskAssignDao.saveTaskAssign(taskAssign);
    	 return "redirect:getAllAssignedTasks";
     }
     
     @RequestMapping(value="showAllAssignedTasks")
     public @ResponseBody String showAllTaskAssign() {
    	 List<TaskAssign> taskAssignList=taskAssignDao.showAllTaskAssigns();
    	 List<TaskAssign> list=new LinkedList<TaskAssign>();
    	 for(TaskAssign taskAssign:taskAssignList) {
    		 Employee emp=empDao.findEmployeeById(taskAssign.getEmpId());
    		 taskAssign.setEmpName(emp.getEmpName());
    		 list.add(taskAssign);
    	 }
    	 return JSON.toJSONString(list); 
     }
     
     @RequestMapping(value="findAssignedTask")
     public @ResponseBody String findAssignedTask(@RequestParam int taskAssignId) {
    	 TaskAssign taskAssign=taskAssignDao.findTaskAssignById(taskAssignId);
    	 return JSON.toJSONString(taskAssign); 
     }
     
     @RequestMapping(value="editAssignedTask")
     public String editAssignedTask(@RequestParam long taskAssignId,@RequestParam String revisedDate,@RequestParam String revisedStartTime,@RequestParam String revisedEndTime,@RequestParam int taskProgress,@RequestParam int empId) {
    	 TaskAssign taskAssign=taskAssignDao.findTaskAssignById(taskAssignId);
    	 taskAssign.setEmpId(empId);
    	 taskAssign.setRevisedDate(revisedDate);
    	 taskAssign.setRevisedEndTime(revisedEndTime);
    	 taskAssign.setRevisedStartTime(revisedStartTime);
    	 taskAssignDao.saveTaskAssign(taskAssign);
    	 return "redirect:getAllAssignedTasks"; 
     }
     
     @RequestMapping(value="deleteTaskAssign")
     public String deleteTaskAssign(@RequestParam int taskAssignId) {
    	 TaskAssign taskAssign=taskAssignDao.findTaskAssignById(taskAssignId);
    	 taskAssignDao.deleteTaskAssign(taskAssign);
    	 return "redirect:getAllAssignedTasks";
     }
     
}
