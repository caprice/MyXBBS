package com.itworld.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.dao.ArticleDao;
import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.ArticleForm;
import com.itworld.bbs.model.BBS;
import com.itworld.bbs.model.User;

public class DetailsAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		BBS currentBbs = null;
		BBS parentBbs = null;
		BBS rootBbs = null;
		User user = new User();
		
		try {
			ArticleForm af = (ArticleForm)form;
			int id = af.getId();
			
			ArticleDao ad = new ArticleDao();
			currentBbs = ad.queryArticleById(id);
			currentBbs.setHit(currentBbs.getHit()+1);
			ad.modifyArticle(currentBbs);
			
			UserDao userDao = new UserDao();
			user.setUserid(currentBbs.getUser().getUserid());
			user = userDao.queryUserByUserId(user);
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "DetailError");
			return mapping.findForward("success");
		}
		currentBbs.setUser(user);
		request.setAttribute("currentBbs", currentBbs);
		
		if(currentBbs.getPid() != 0) {
			ArticleDao ad2 = new ArticleDao();
			parentBbs = ad2.queryArticleById(currentBbs.getPid());
			
			UserDao userDao = new UserDao();
			user.setUserid(parentBbs.getUser().getUserid());
			user = userDao.queryUserByUserId(user);
			parentBbs.setUser(user);
			request.setAttribute("parentBbs", parentBbs);
		}
		
		ArticleDao ad3 = new ArticleDao();
		rootBbs = ad3.queryArticleById(currentBbs.getRootid());
		request.setAttribute("rootBbs", rootBbs);
		
		return mapping.findForward("success");
	}

}
