package com.mylcat.Dao;

import java.util.List;

import javax.transaction.Transactional;

import com.mylcat.Domain.TaskAssign;

public class TaskAssignDao extends MylcatDao{
     
	@Transactional
	public void saveTaskAssign(TaskAssign taskAssign) {
		mySession().saveOrUpdate(taskAssign);
	}
	
	@Transactional
	public List<TaskAssign> showAllTaskAssigns(){
		return mySession().createCriteria(TaskAssign.class).list();
	}
	
	@Transactional
	public void deleteTaskAssign(TaskAssign taskAssign) {
		mySession().delete(taskAssign);
	}
	
	@Transactional
	public TaskAssign findTaskAssignById(long id) {
		return (TaskAssign)mySession().get(TaskAssign.class, id);
	}
}
