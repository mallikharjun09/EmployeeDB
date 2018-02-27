package com.mylcat.Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TBL_ROLE_BEAN")
public class Role {
   @Id
   @Column(name="roleId")
   private int roleId;
   
   @Column(name="roleName")
   private String roleName;
   
   @Column(name="roleDescription")
   private String roleDescription;

public int getRoleId() {
	return roleId;
}

public void setRoleId(int roleId) {
	this.roleId = roleId;
}

public String getRoleName() {
	return roleName;
}

public void setRoleName(String roleName) {
	this.roleName = roleName;
}

public String getRoleDescription() {
	return roleDescription;
}

public void setRoleDescription(String roleDescription) {
	this.roleDescription = roleDescription;
}
}
