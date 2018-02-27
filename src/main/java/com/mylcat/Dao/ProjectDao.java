package com.mylcat.Dao;

import com.mylcat.Domain.Project;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;

// Referenced classes of package com.mylcat.Dao:
//            MylcatDao

public class ProjectDao extends MylcatDao
{

    public ProjectDao()
    {
    }

    public void saveProject(Project pro)
    {
        mySession().saveOrUpdate(pro);
    }

    public List showAllProjects()
    {
        return mySession().createCriteria(Project.class).list();
    }

    public void deleteProject(Project pro)
    {
        mySession().delete(pro);
    }

    public Project findProjectById(int id)
    {
        return (Project)mySession().get(Project.class, id);
    }
}
