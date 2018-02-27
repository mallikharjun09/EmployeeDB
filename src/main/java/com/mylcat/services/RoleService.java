package com.mylcat.services;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mylcat.Dao.RoleDao;
import com.mylcat.Domain.Role;


@Controller
public class RoleService {
     @Autowired
     RoleDao roleDao;
     
     @RequestMapping(value="saveRole", method=RequestMethod.POST)
     public String addRole(@RequestParam String roleName,@RequestParam int roleId,@RequestParam String roleDescription) {
    	 Role role=new Role();
    	 role.setRoleName(roleName);
    	 role.setRoleId(roleId);
    	 role.setRoleDescription(roleDescription);
    	 roleDao.saveRole(role);
    	 return "redirect:getAllRole";
     }
     
     @RequestMapping(value="showAllRole")
     public @ResponseBody String showAllRole() {
    	 List<Role> roleList=roleDao.showAllRoles();
    	 return JSON.toJSONString(roleList); 
     }
     
     @RequestMapping(value="findRole")
     public @ResponseBody String findRole(@RequestParam int roleId) {
    	 Role role=roleDao.findRoleById(roleId);
    	 return JSON.toJSONString(role); 
     }
     
     @RequestMapping(value="editRole")
     public String editRole(@RequestParam int roleId,@RequestParam String roleName,@RequestParam String roleDescription) {
    	 Role role=new Role();
    	 role.setRoleName(roleName);
    	 role.setRoleDescription(roleDescription);
    	 role.setRoleId(roleId);
    	 roleDao.saveRole(role);
    	 return "redirect:getAllRole"; 
     }
     
     @RequestMapping(value="deleteRole")
     public String deleteRole(@RequestParam int roleId) {
    	 Role role=roleDao.findRoleById(roleId);
    	 roleDao.deleteRole(role);
    	 return "redirect:getAllRole";
     }
     
     @RequestMapping(value="getRoleName")
     public String getRoleName(@RequestParam int roleId) {
    	 Role role=roleDao.findRoleById(roleId);
    	 return roleDao.getRoleName(role);
     }
     
}
