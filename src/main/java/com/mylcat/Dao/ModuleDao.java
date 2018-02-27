package com.mylcat.Dao;

import java.util.List;

import javax.transaction.Transactional;

import com.mylcat.Domain.Module;
import com.mylcat.Domain.Role;



public class ModuleDao extends MylcatDao {

	@Transactional
	public void saveModule(Module module) {
		mySession().saveOrUpdate(module);
	}
	
	@Transactional
	public List<Module> showAllModule(){
		return mySession().createCriteria(Module.class).list();
	}
	
	@Transactional
	public void deleteModule(Module module) {
		mySession().delete(module);
	}
	
	@Transactional
	public Module findModuleById(int id) {
		return (Module)mySession().get(Module.class, id);
	}
	@Transactional
	public String getprojectName(Module module) {
		return module.getProjectName();
	}
}