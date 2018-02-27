package com.mylcat.Dao;

import java.util.List;

import javax.transaction.Transactional;

import com.mylcat.Domain.Employee;

public class EmployeeDao extends MylcatDao{
     
	@Transactional
	public void saveEmployee(Employee emp) {
		mySession().saveOrUpdate(emp);
	}
	
	@Transactional
	public List<Employee> showAllEmployees(){
		return mySession().createCriteria(Employee.class).list();
	}
	
	@Transactional
	public void deleteEmployee(Employee emp) {
		mySession().delete(emp);
	}
	
	@Transactional
	public Employee findEmployeeById(int id) {
		return (Employee)mySession().get(Employee.class, id);
	}
}
