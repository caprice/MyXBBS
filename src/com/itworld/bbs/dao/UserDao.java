package com.itworld.bbs.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.itworld.bbs.idao.IUserDao;
import com.itworld.bbs.model.User;
import com.itworld.bbs.utils.HibernateUtils;

public class UserDao implements IUserDao{

	public void addUser(User user) {
		
		Session session = null;
		Transaction tr = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			session.save(user);
			tr.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
	}

	public void deleteUser(User user) {
		
	}

	public void modifyUser(User user) {
		Session session = null;
		Transaction tr = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			session.update(user);
			tr.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
	}

	public List<User> queryAllUser() {
		return null;
	}

	@SuppressWarnings("unchecked")
	public User queryUserByUserNP(User user) {
		
		Session session = null;
		Transaction tr = null;
		User u = null;
		List<User> userList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from User as u where u.username = ? and u.password = ?";
			Query query = session.createQuery(hql);
			query.setString(0, user.getUsername());
			query.setString(1, user.getPassword());
			
			userList = query.list();
			if(userList.size()>0) {
				u = userList.get(0);
			}
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return u;
	}

	@SuppressWarnings("unchecked")
	public void addTX(User user,String path) {
		Session session = null;
		Transaction tr = null;
		User u = null;
		List<User> userList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from User where userid = "+ user.getUserid();
			Query query = session.createQuery(hql);
			
			userList = query.list();
			if(userList.size()>0) {
				u = userList.get(0);
			}
			
			u.setImagePath(path);
			session.update(u);
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
	}

	@SuppressWarnings("unchecked")
	public User queryUserByUserId(User user) {

		Session session = null;
		Transaction tr = null;
		User u = null;
		List<User> userList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from User as u where u.userid = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, user.getUserid());
			
			userList = query.list();
			if(userList.size()>0) {
				u = userList.get(0);
			}
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return u;
	}

	@SuppressWarnings("unchecked")
	public List<User> queryUserByNP(User user) {

		Session session = null;
		Transaction tr = null;
		List<User> userList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from User as u where u.username = ? and u.password = ?";
			Query query = session.createQuery(hql);
			query.setString(0, user.getUsername());
			query.setString(1, user.getPassword());
			
			userList = query.list();
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return userList;
	}

}
