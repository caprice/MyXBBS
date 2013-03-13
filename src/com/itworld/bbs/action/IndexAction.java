package com.itworld.bbs.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.bean.Article;
import com.itworld.bbs.dao.ArticleDao;
import com.itworld.bbs.dao.HitDao;
import com.itworld.bbs.form.PageForm;
import com.itworld.bbs.tree.Tree;

public class IndexAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		try {
			List<Article> articles = new ArrayList<Article>();
			articles = Tree.getTree(articles,0 , 0);
			
			int pageSize = 10;
			
			PageForm pf = (PageForm)form;
			int pageNo = pf.getPageNo();
			//System.out.println(pageNo);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
			
			int totalRecords = articles.size();
			//System.out.println(totalRecords+"____totalRecords");
			
			int totalPages = totalRecords%pageSize == 0? totalRecords/pageSize : totalRecords/pageSize +1;
			
			if(pageNo > totalPages) {
				pageNo = totalPages;
			}
			
			int startPos = (pageNo - 1) * pageSize;
			//System.out.println(startPos+"____startPos");
			
			List<Article> articlesTemp = new ArrayList<Article>();
			
			//System.out.println(pageNo+"*****");
			for(int i = 0; i<pageNo-1; i++) {
				pageSize += 10;
			}
			//System.out.println(pageSize+"****");
			
			if(startPos >= totalRecords - totalRecords%pageSize) {
				pageSize = totalRecords%pageSize;
			}
			
			//System.out.println(startPos+"____startPos");
			//System.out.println(pageSize+"****");
			
			for(int i = startPos; i < pageSize; i++) {
				articlesTemp.add(articles.get(i));
				//System.out.println(articles.get(i)+"--------");
			}
			/*for(Iterator<Article> i = articlesTemp.iterator(); i.hasNext();) {
				Article bbs = i.next();
				System.out.println("----------");
				System.out.println(bbs.getTitle());
			}*/
			request.setAttribute("pageNo", pageNo);
			request.setAttribute("articles", articlesTemp);
			
			request.setAttribute("totalPages", totalPages);
				
		} catch(Exception e){
			e.printStackTrace();
			
			request.setAttribute("flag", "IndexError");
			return mapping.findForward("failure");
		}
		
		HitDao hd = new HitDao();
		int hit = hd.queryHit();
		request.setAttribute("hit", hit);
		hd.modifyHit();

		ArticleDao ad = new ArticleDao();
		int rootCount = ad.queryRootCount();
		int totleCount = ad.queryTotleCount();
		
		request.setAttribute("rootCount", rootCount);
		request.setAttribute("totleCount", totleCount);
		
		return mapping.findForward("success");
	}

}
