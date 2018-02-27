package com.mylcat.Domain;

public class Project
{

    private int projectId;
    private String projectName;
    private String projectHead;
    private String clientName;
    private String clientAddress;
    private String startDate;

    public Project()
    {
    }

    public int getProjectId()
    {
        return projectId;
    }

    public void setProjectId(int projectId)
    {
        this.projectId = projectId;
    }

    public String getProjectName()
    {
        return projectName;
    }

    public void setProjectName(String projectName)
    {
        this.projectName = projectName;
    }

    public String getProjectHead()
    {
        return projectHead;
    }

    public void setProjectHead(String projectHead)
    {
        this.projectHead = projectHead;
    }

    public String getClientName()
    {
        return clientName;
    }

    public void setClientName(String clientName)
    {
        this.clientName = clientName;
    }

    public String getClientAddress()
    {
        return clientAddress;
    }

    public void setClientAddress(String clientAddress)
    {
        this.clientAddress = clientAddress;
    }

    public String getStartDate()
    {
        return startDate;
    }

    public void setStartDate(String startDate)
    {
        this.startDate = startDate;
    }
}
