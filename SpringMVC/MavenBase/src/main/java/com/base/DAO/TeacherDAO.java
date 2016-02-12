/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.DAO;

import com.base.models.Teachers;
import com.base.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * This class is for making CRUD operations to teachers table in our database
 * @author Ohjelmistokehitys
 */
public class TeacherDAO {
    
    /**
     * This method adds new teacher into database
     * @param teach
     * @throws java.lang.Exception
     */
    public static void addTeacher(Teachers teach) throws Exception {
        
        //Create session to our database
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Because we are writing to database we need transaction besides session
        Transaction transaction = session.beginTransaction();
        //Add teacher to database
        System.out.println("Save Teacher info to db");
        session.save(teach);
        //End Transaction
        transaction.commit();
        //Release session
        session.close();
    }
    
    public static List<Teachers> getTeachers() throws Exception{
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Use hql query language here, not SQL!!!
        Query query = session.createQuery("from Teachers");
        List<Teachers> lst = query.list();
        session.close();
        //Return list of teachers
        return lst;
    }
}
