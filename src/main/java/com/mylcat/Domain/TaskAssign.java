package com.mylcat.Domain;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="TBL_TASKASSIGN_BEAN")
public class TaskAssign {
     @Id
     @Column(name="taskAssignId")
     @GeneratedValue(strategy=GenerationType.AUTO)
     private long taskAssignId;
     
     @Column(name="taskId")
     private long taskId;
     
     @Column(name="taskProgress")
     private int taskProgress=0;
     
     @Column(name="taskName")
     private String taskName;
     
     @Column(name="empId")
     private int empId;
     
     @Column(name="empName")
     private String empName;
     
     public long getTaskAssignId() {
		return taskAssignId;
	}

	public void setTaskAssignId(long taskAssignId) {
		this.taskAssignId = taskAssignId;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	
	 @Column(name="startTime")
	 private String startTime;
     
     
	 @Column(name="endTime")
	 private String endTime;
     
    
	 @Column(name="revisedStartTime")
	 private String revisedStartTime;
     
    
	 @Column(name="revisedEndTime")
	 private String revisedEndTime;
     
    
	 @Column(name="startDate")
	 private String startDate;
     
    
	 @Column(name="endDate")
	 private String endDate;
     
     
	 @Column(name="revisedDate")
	 private String revisedDate;

    public int getTaskProgress() {
 		return taskProgress;
 	}

 	public void setTaskProgress(int taskProgress) {
 		this.taskProgress = taskProgress;
 	}
	public long getTaskId() {
		return taskId;
	}

	public void setTaskId(long taskId) {
		this.taskId = taskId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskDescription(String taskName) {
		this.taskName = taskName;
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

	
	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getRevisedStartTime() {
		return revisedStartTime;
	}

	public void setRevisedStartTime(String revisedStartTime) {
		this.revisedStartTime = revisedStartTime;
	}

	public String getRevisedEndTime() {
		return revisedEndTime;
	}

	public void setRevisedEndTime(String revisedEndTime) {
		this.revisedEndTime = revisedEndTime;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getRevisedDate() {
		return revisedDate;
	}

	public void setRevisedDate(String revisedDate) {
		this.revisedDate = revisedDate;
	}
}
