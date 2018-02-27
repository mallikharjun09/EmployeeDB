package com.mylcat.Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="TBL_EMPLOYEE_BEAN")
public class Employee {
     @Id
     @Column(name="empId")
     @GeneratedValue(strategy=GenerationType.AUTO)
     private int empId;
     
     @Column(name="empName")
     private String empName;
     
     @Column(name="empMail")
     private String empMail;
     
     @Column(name="empAddress")
     private String empAddress;
     
     @Column(name="empPhone")
     private long empPhone;
     
     @Column(name="roleId")
     private int roleId;
     
     @Column(name="empPassword")
     private String empPassword;
     
     @Column(name="roleName")
     private String roleName;
     
     public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpMail() {
		return empMail;
	}

	public void setEmpMail(String empMail) {
		this.empMail = empMail;
	}

	public String getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}

	public long getEmpPhone() {
		return empPhone;
	}

	public void setEmpPhone(long empPhone) {
		this.empPhone = empPhone;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getEmpPassword() {
		return empPassword;
	}

	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	

}
