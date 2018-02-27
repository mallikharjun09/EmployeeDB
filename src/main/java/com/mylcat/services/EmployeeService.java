package com.mylcat.services;


import java.util.LinkedList;

import java.util.List;
import java.util.Set;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.EmployeeDao;
import com.mylcat.Dao.RoleDao;
import com.mylcat.Domain.Employee;
import com.mylcat.Domain.Role;


@Controller
public class EmployeeService {
     @Autowired
     EmployeeDao empDao;
     @Autowired
     RoleDao roleDao;
     
     @RequestMapping(value="saveEmployee", method=RequestMethod.POST)
     public String addEmployee(@RequestParam String empName,@RequestParam String empMail,@RequestParam String empPassword,@RequestParam Long empPhone,@RequestParam String empAddress,@RequestParam int roleId) {
    	 Employee emp=new Employee();
    	 emp.setEmpAddress(empAddress);
    	 emp.setEmpMail(empMail);
    	 emp.setEmpName(empName);
    	 emp.setEmpPassword(empPassword);
    	 emp.setEmpPhone(empPhone);
    	 emp.setRoleId(roleId);
    	 empDao.saveEmployee(emp);
    	 return "redirect:getAll";
     }
     
     @RequestMapping(value="showAllEmp")
     public @ResponseBody String showAllEmp() {
    	 List<Employee> empList=empDao.showAllEmployees();
    	 List<Employee> list=new LinkedList<Employee>();
    	 for(Employee emp:empList) {
    		 Role role=roleDao.findRoleById(emp.getRoleId());
    		 emp.setRoleName(role.getRoleName());
    		 list.add(emp);
    	 }
    	 return JSON.toJSONString(list); 
     }
     
     @RequestMapping(value="findEmployee")
     public @ResponseBody String findEmployee(@RequestParam int empId) {
    	 Employee emp=empDao.findEmployeeById(empId);
    	 return JSON.toJSONString(emp); 
     }
     
     @RequestMapping(value="editEmployee")
     public String editEmployee(@RequestParam int empId,@RequestParam String empName,@RequestParam String empMail,@RequestParam String empPassword,@RequestParam Long empPhone,@RequestParam String empAddress,@RequestParam int roleId) {
    	 Employee emp=empDao.findEmployeeById(empId);
    	 emp.setEmpId(empId);
    	 emp.setEmpAddress(empAddress);
    	 emp.setEmpMail(empMail);
    	 emp.setEmpName(empName);
    	 emp.setEmpPassword(empPassword);
    	 emp.setEmpPhone(empPhone);
    	 emp.setRoleId(roleId);
    	 empDao.saveEmployee(emp);
    	 return "redirect:getAll"; 
     }
     
     @RequestMapping(value="deleteEmployee")
     public String deleteEmployee(@RequestParam int empId) {
    	 Employee emp=empDao.findEmployeeById(empId);
    	 empDao.deleteEmployee(emp);
    	 return "redirect:getAll";
     }
     
}
