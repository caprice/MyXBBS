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
import com.itworld.bbs.tree.Tree;

public class BackArticleListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<Article> articles = new ArrayList<Article>();
		articles = Tree.getTree(articles,0 , 0);

		request.setAttribute("articles", articles);
		
		return mapping.findForward("success");
	}

}
