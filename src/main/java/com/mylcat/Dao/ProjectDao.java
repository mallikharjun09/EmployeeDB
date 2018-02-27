package com.mylcat.Dao;

import com.mylcat.Domain.Project;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;



public class ProjectDao extends MylcatDao
{
	@Transactional
    public void saveProject(Project pro)
    {
        mySession().saveOrUpdate(pro);
    }

	@Transactional
    public List showAllProjects()
    {
        return mySession().createCriteria(Project.class).list();
    }

	@Transactional
	public void deleteProject(Project pro)
    {
        mySession().delete(pro);
    }

	@Transactional
	public Project findProjectById(int projectid)
    {
        return (Project)mySession().get(Project.class, projectid);
    }
}
