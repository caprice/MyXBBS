package com.itworld.bbs.tree;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.itworld.bbs.bean.Article;
import com.itworld.bbs.model.BBS;
import com.itworld.bbs.model.User;
import com.itworld.bbs.utils.HibernateUtils;

public class Tree {

	@SuppressWarnings("unchecked")
	public static List<Article> getTree(List<Article> articles, int id ,int grade) {
		Session session = null;
		Transaction tr = null;
		List<BBS> bbsList = null;
		
		try {
			session = HibernateUtils.getSession();
			tr = session.beginTransaction();
			
			String hql = "From BBS where pid = " + id;
			Query query = session.createQuery(hql);
			bbsList = query.list();
			
			
			for(Iterator<BBS> i = bbsList.iterator();i.hasNext();) {
				
				Article article = new Article();
				
				BBS bbs = new BBS();
				bbs = (BBS)i.next();

				article.setId(bbs.getId());
				article.setPid(bbs.getPid());
				article.setRootid(bbs.getRootid());
				article.setTitle(bbs.getTitle());
				article.setContent(bbs.getContent());
				article.setPdate(bbs.getPdate());
				article.setIsleaf(bbs.getIsleaf());
				article.setHit(bbs.getHit());
				article.setReplyNum(bbs.getReplyNum());
				article.setUser(bbs.getUser());
				
				article.setGrade(grade);
				
				User user = new User();
				
				String hql2 = "from User where userid = " + bbs.getUser().getUserid();
				Query query2 = session.createQuery(hql2);
				List userList = query2.list();
				
				if(userList.size() == 1) {
					
					user = (User) userList.get(0);
				}
				
				article.setUser(user);
				
				articles.add(article);
				
				if(article.getIsleaf() != 1) {
					
					getTree(articles,bbs.getId(), grade + 1);
				}
				
			}
			
			tr.commit();
		}catch(Exception e) {
			e.printStackTrace();
			tr.rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		
		return articles;
	}
}
