package com.itworld.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.dao.ArticleDao;
import com.itworld.bbs.form.ArticleForm;
import com.itworld.bbs.model.BBS;

public class BackDeleteAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArticleForm af = (ArticleForm)form;
		
		int id = af.getId();
		
		ArticleDao ad = new ArticleDao();
		BBS  bbs = ad.queryArticleById(id);
		
		bbs.setContent("�����ѱ�����Աɾ����<br> ��淶�Լ��������лл������������");
		bbs.setTitle("�����ѱ�����Աɾ��!");
		
		ad.modifyArticle(bbs);
		
		return mapping.findForward("success");
	}

}
