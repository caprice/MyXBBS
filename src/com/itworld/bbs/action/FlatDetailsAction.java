package com.itworld.bbs.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.bean.BBSBean;
import com.itworld.bbs.dao.ArticleDao;
import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.ArticleForm;
import com.itworld.bbs.model.BBS;
import com.itworld.bbs.model.User;

public class FlatDetailsAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArticleForm af = (ArticleForm)form;
		
		int rootid = af.getId();
		//System.out.println(rootid);
		request.setAttribute("id", rootid);
		
		ArticleDao ad = new ArticleDao();
		List<BBS> bbsList = new ArrayList<BBS>();
		bbsList = ad.queryArticleByRootId(rootid);
		/*System.out.println(bbsList.size()+"---bbsListsize");
		for(Iterator<BBS> i = bbsList.iterator(); i.hasNext(); ) {
			BBS b = i.next();
			System.out.println(b.getTitle());
		}*/
		

		List<BBSBean> beaList = new ArrayList<BBSBean>();
		
		for(Iterator<BBS> i = bbsList.iterator(); i.hasNext(); ) {
			
			BBSBean bea = new BBSBean();
			
			BBS currentBbs = i.next();
			
			User user = new User();
			user = currentBbs.getUser();
			
			UserDao userDao = new UserDao();
			user = userDao.queryUserByUserId(user);
			currentBbs.setUser(user);
			

			BBS parentBbs = null;
			BBS rootBbs = null;
			
			if(currentBbs.getPid() == 0) {
				parentBbs = currentBbs;
				rootBbs = currentBbs;
			}else {
				parentBbs = ad.queryArticleById(currentBbs.getPid());
				user = parentBbs.getUser();
				user  = userDao.queryUserByUserId(user);
				parentBbs.setUser(user);
				
				rootBbs = ad.queryArticleById(currentBbs.getRootid());
			}
			
			bea.setCurrentBbs(currentBbs);
			bea.setParentBbs(parentBbs);
			bea.setRootBbs(rootBbs);
			
			beaList.add(bea);
			
		}
		
		/*BBS root = ad.queryArticleById(rootid);
		User u = new User();
		u.setUserid(root.getUser().getUserid());
		u = new UserDao().queryUserByUserId(u);
		root.setUser(u);
		
		request.setAttribute("root", root);*/
		
		
		/***********************/
		int pageSize = 3;
		
		int pageNo = af.getPageNo();
		//System.out.println(pageNo);
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		int totalRecords = beaList.size();
		//System.out.println(totalRecords+"____totalRecords");
		
		int totalPages = totalRecords%pageSize == 0? totalRecords/pageSize : totalRecords/pageSize +1;
		
		if(pageNo > totalPages) {
			pageNo = totalPages;
		}
		
		int startPos = (pageNo - 1) * pageSize;
		//System.out.println(startPos+"____startPos");
		
		List<BBSBean> beaTemp = new ArrayList<BBSBean>();
		
		//System.out.println(pageNo+"*****");
		for(int i = 0; i<pageNo-1; i++) {
			pageSize += 10;
		}
		//System.out.println(pageSize+"****");
		
		if(startPos >= totalRecords - totalRecords%pageSize) {
			pageSize = totalRecords%pageSize;
		}
		
		for(int i = startPos; i < pageSize; i++) {
			beaTemp.add(beaList.get(i));
			//System.out.println(articles.get(i)+"--------");
		}
		/*for(Iterator<Article> i = articlesTemp.iterator(); i.hasNext();) {
			Article bbs = i.next();
			System.out.println("----------");
			System.out.println(bbs.getTitle());
		}*/
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("beaList", beaTemp);
		
		request.setAttribute("totalPages", totalPages);
		
		
		//System.out.println(beaList.size());
		
		return mapping.findForward("success");
	}

}
