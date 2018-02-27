package com.mylcat.Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TBL_MODULE_BEAN")
public class Module {

	@Id
	@Column(name="moduleId")
	  @GeneratedValue(strategy=GenerationType.AUTO)
	private int moduleId;
	
	

	@Column(name="moduleName")
     private String moduleName;
    
	 @Column(name="projectId")
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  private int projectId;
	
	 
	 @Column(name="projectName")
     private String projectName;
	 
	 
	 public int getModuleId() {
			return moduleId;
		}

		public void setModuleId(int moduleId) {
			this.moduleId = moduleId;
		}

		public String getModuleName() {
			return moduleName;
		}

		public void setModuleName(String moduleName) {
			this.moduleName = moduleName;
		}

		public int getProjectId() {
			return projectId;
		}

		public void setProjectId(int projectId) {
			this.projectId = projectId;
		}

		public String getProjectName() {
			return projectName;
		}

		public void setProjectName(String projectName) {
			this.projectName = projectName;
		}

	 
	
}
