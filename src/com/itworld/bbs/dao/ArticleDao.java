package com.itworld.bbs.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.itworld.bbs.idao.IArticleDao;
import com.itworld.bbs.model.BBS;
import com.itworld.bbs.utils.HibernateUtils;

public class ArticleDao implements IArticleDao{

	public void addArticle(BBS bbs) {
		
		Session session = null;
		Transaction tr = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			session.save(bbs);
			tr.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
	}

	@SuppressWarnings("unchecked")
	public BBS queryArticleByTCP(BBS bbs) {
		Session session = null;
		Transaction tr = null;
		BBS b = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS as b where b.title = ? and b.content = ? and b.pdate = ? and pid=0";
			Query query = session.createQuery(hql);
			query.setString(0, bbs.getTitle());
			query.setString(1, bbs.getContent());
			query.setString(2, bbs.getPdate());
			
			bbsList = query.list();
			if(bbsList.size()>0) {
				b = bbsList.get(0);
			}
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return b;
	}

	public void modifyArticle(BBS bbs) {
		Session session = null;
		Transaction tr = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			session.update(bbs);
			tr.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
	}

	@SuppressWarnings("unchecked")
	public int queryRootCount() {
		Session session = null;
		Transaction tr = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS as b where pid = 0";
			Query query = session.createQuery(hql);
			bbsList = query.list();
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return bbsList.size();
	}

	@SuppressWarnings("unchecked")
	public int queryTotleCount() {
		Session session = null;
		Transaction tr = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS";
			Query query = session.createQuery(hql);
			bbsList = query.list();
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return bbsList.size();
	}

	@SuppressWarnings("unchecked")
	public BBS queryArticleById(int id) {
		Session session = null;
		Transaction tr = null;
		BBS b = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS as b where b.id = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, id);
			
			bbsList = query.list();
			if(bbsList.size()>0) {
				b = bbsList.get(0);
			}
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return b;
	}

	@SuppressWarnings("unchecked")
	public List<BBS> queryArticleByRootId() {
		Session session = null;
		Transaction tr = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS as b where b.pid = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0,0);
			
			bbsList = query.list();
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return bbsList;
	}
	
	@SuppressWarnings("unchecked")
	public List<BBS> queryArticleByRootId(int rootid) {
		Session session = null;
		Transaction tr = null;
		List<BBS> bbsList  = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from BBS as b where b.rootid = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0,rootid);
			
			bbsList = query.list();
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return bbsList;
	}
}
