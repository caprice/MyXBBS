package com.itworld.bbs.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.itworld.bbs.idao.IHitDao;
import com.itworld.bbs.model.Hit;
import com.itworld.bbs.utils.HibernateUtils;

public class HitDao implements IHitDao {

	@SuppressWarnings("unchecked")
	public int queryHit() {
		
		Session session = null;
		Transaction tr = null;
		Hit h = null;
		List<Hit> hitList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from Hit as h where h.id = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, 1);
			
			hitList = query.list();
			if(hitList.size()>0) {
				h = hitList.get(0);
			}
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return h.getHit();
	}

	@SuppressWarnings("unchecked")
	public void modifyHit() {
		Session session = null;
		Transaction tr = null;
		Hit h = null;
		List<Hit> hitList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "from Hit as h where h.id = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, 1);
			
			hitList = query.list();
			if(hitList.size()>0) {
				h = hitList.get(0);
			}
			
			h.setHit(h.getHit()+1);
			session.update(h);
			
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
	}

}
