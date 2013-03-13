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

import com.itworld.bbs.dao.ArticleDao;
import com.itworld.bbs.dao.HitDao;
import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.PageForm;
import com.itworld.bbs.model.BBS;
import com.itworld.bbs.model.User;

public class FlatAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<BBS> bbsList = new ArrayList<BBS>();
		
		bbsList = new ArticleDao().queryArticleByRootId();
		
		for(Iterator<BBS> i = bbsList.iterator();i.hasNext();) {
			BBS bbs = (BBS) i.next();
			
			User user = new User();
			UserDao userDao = new UserDao();
			user.setUserid(bbs.getUser().getUserid());
			user = userDao.queryUserByUserId(user);
			
			bbs.setUser(user);
		}
		
		
		int pageSize = 10;
		
		PageForm pf = (PageForm)form;
		int pageNo = pf.getPageNo();
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		int totalRecords = bbsList.size();
		//System.out.println(totalRecords+"____totalRecords");
		
		int totalPages = totalRecords%pageSize == 0? totalRecords/pageSize : totalRecords/pageSize +1;
		
		if(pageNo > totalPages) {
			pageNo = totalPages;
		}
		
		int startPos = (pageNo - 1) * pageSize;
		//System.out.println(startPos+"____startPos");
		
		List<BBS> articlesTemp = new ArrayList<BBS>();
		
		//System.out.println(pageNo+"*****");
		for(int i = 0; i<pageNo-1; i++) {
			pageSize += 10;
		}
		//System.out.println(pageSize+"****");
		
		if(startPos >= totalRecords - totalRecords%pageSize) {
			pageSize = totalRecords%pageSize;
		}
		
		for(int i = startPos; i < pageSize; i++) {
			articlesTemp.add(bbsList.get(i));
			//System.out.println(articles.get(i)+"--------");
		}
		/*for(Iterator<Article> i = articlesTemp.iterator(); i.hasNext();) {
			Article bbs = i.next();
			System.out.println("----------");
			System.out.println(bbs.getTitle());
		}*/
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("articles", articlesTemp);
		
		
		ArticleDao ad = new ArticleDao();
		int rootCount = ad.queryRootCount();
		int totleCount = ad.queryTotleCount();
		
		HitDao hd = new HitDao();
		int hit = hd.queryHit();
		request.setAttribute("hit", hit);
		
		request.setAttribute("rootCount", rootCount);
		request.setAttribute("totleCount", totleCount);
		
		request.setAttribute("totalPages", totalPages);
		
		return mapping.findForward("success");
	}

}
