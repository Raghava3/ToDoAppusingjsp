package com.bridgelabz.todoapp.dao.daoimplementation;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.bridgelabz.todoapp.dao.daointerface.DataDaoInter;
import com.bridgelabz.todoapp.model.ToDoData;

/**
 * @author bridgelabz3 Raghava this class implements DataDaoInter and provide
 *         the implementation for methods addTitle method returns boolean
 *         dataList method returns List
 */
public class DataDaoImpl implements DataDaoInter {

	@Autowired
	private SessionFactory sessionFactory;

	Session session;
	Transaction transaction;


	@Override
	public boolean addNote(ToDoData toDoData)

	{
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		try {
			session.save(toDoData);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	@Override
	public List<ToDoData> listOfNotes(int id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("coming1");
		try {
			String hql = "from ToDoData where USER_ID=:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			List<ToDoData> listofdata = query.list();
			transaction.commit();
			return listofdata;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	@Override
	public boolean noteUpdate(ToDoData toDoData) {
		try {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.saveOrUpdate(toDoData);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} 
	}

	@Override
	public boolean noteToDelete(int id) {
		try {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			// session.delete(toDoData);
			String hql = "delete from ToDoData where id=:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			query.executeUpdate();
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} 
	}
	
	/*@Override
	public List<ToDoData> listOfindividualnotes(int todoid,int userid) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("coming23");
		try {
			String hql = "from ToDoData where USER_ID=:id and DATA_ID=:todoid";
			Query query = session.createQuery(hql);
			System.out.println("userid"+userid);
			System.out.println("todoid"+todoid);
			query.setParameter("id", userid);
			query.setParameter("todoid", todoid);
			List<ToDoData> listofdata = query.list();
						
			transaction.commit();
			Iterator<ToDoData> i=listofdata.iterator();
			while(i.hasNext())
			{
				ToDoData tododata=(ToDoData)i.next();
				System.out.println(tododata.getTitle());
				System.out.println(tododata.getDescription());
			}
			return listofdata;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
	
	
	
	@Override
	public ToDoData individualNotesToPop(int userid,int todoid) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("userid"+userid);
        System.out.println("todoid"+todoid);
		try {
			String hql = "from ToDoData where USER_ID=:todoid and DATA_ID=:userid";
			Query query = session.createQuery(hql);
			query.setParameter("userid", userid);
			query.setParameter("todoid", todoid);
			ToDoData tododata = (ToDoData)query.uniqueResult();
			transaction.commit();
			return tododata;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}*/
	
	
}
