package com.mylcat.Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name="TBL_PROJECT_BEAN")
	public class Project {
	     @Id
	     @Column(name="projectId")
	     @GeneratedValue(strategy=GenerationType.AUTO)
	     private int projectId;
	     
	     @Column(name="projectName")
	     private String projectName;
	     
	     
	     @Column(name="projectHead")
	     private String projectHead;
	     
	     
	     @Column(name="clientName")
	     private String clientName;
	     
	     @Column(name="clientAddress")
	     private String clientAddress;
	     
	     @Column(name="startDate")
	     private String startDate;

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

		public String getProjectHead() {
			return projectHead;
		}

		public void setProjectHead(String projectHead) {
			this.projectHead = projectHead;
		}

		public String getClientName() {
			return clientName;
		}

		public void setClientName(String clientName) {
			this.clientName = clientName;
		}

		public String getClientAddress() {
			return clientAddress;
		}

		public void setClientAddress(String clientAddress) {
			this.clientAddress = clientAddress;
		}

		public String getStartDate() {
			return startDate;
		}

		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}
  
}
