package com.bridgelabz.todoapp.dao.daoimplementation;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.bridgelabz.todoapp.dao.daointerface.UserDaoInter;
import com.bridgelabz.todoapp.model.User;

/**
 * @author bridgelabz3 Raghava This UserDaoImpl class implements UserDaoInter
 *         and provides impementation for unimplemented method registration
 *         method returns boolean login method returns user
 */
public class UserDaoImpl implements UserDaoInter {

	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * This is method for user registration
	 */
	public boolean registration(User user) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		try {
			session.save(user);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		finally {
			if (session != null) {
				session.close();
			}
		}
	}


	public User login(String mail, String password) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {

			/*String hql = "from User where email=:m and password=:p";

			Query query = session.createQuery(hql);
			query.setParameter("m", mail);
			query.setParameter("p", password);*/
    Criteria criteria=session.createCriteria(User.class);
 
			User user = (User) criteria.add(Restrictions.conjunction().add(Restrictions.eq("email", mail)).add(Restrictions.eq("password", password))).uniqueResult();// query.uniqueResult();
			transaction.commit();
			System.out.println("user" + user);
			return user;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (session != null) {

				session.close();
			}
		}
	}
}
