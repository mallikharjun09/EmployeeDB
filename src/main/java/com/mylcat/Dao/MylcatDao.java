package com.mylcat.Dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class MylcatDao {
     @Autowired
     SessionFactory sessionFactory;
     
     public Session mySession() {
    	 Session session=null;
    	 try {
    		 session=sessionFactory.getCurrentSession();
    	 }catch(HibernateException e) {
    		 session=sessionFactory.openSession();
    	 }
    	 return session;
     }
}
