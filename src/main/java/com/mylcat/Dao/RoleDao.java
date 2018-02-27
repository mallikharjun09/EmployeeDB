package com.mylcat.Dao;

import java.util.List;

import javax.transaction.Transactional;

import com.mylcat.Domain.Role;

public class RoleDao extends MylcatDao{
     
	@Transactional
	public void saveRole(Role role) {
		mySession().saveOrUpdate(role);
	}
	
	@Transactional
	public List<Role> showAllRoles(){
		return mySession().createCriteria(Role.class).list();
	}
	
	@Transactional
	public void deleteRole(Role role) {
		mySession().delete(role);
	}
	
	@Transactional
	public Role findRoleById(int id) {
		return (Role)mySession().get(Role.class, id);
	}
	
	@Transactional
	public String getRoleName(Role role) {
		return role.getRoleName();
	}
}
