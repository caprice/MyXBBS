package com.itworld.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.form.AdminForm;

public class BackLoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AdminForm af = (AdminForm)form;
		
		String adminName = af.getAdminname();
		String adminPass = af.getAdminpass();
		
		if(adminName.equals("admin") && adminPass.equals("admin123456")) {
			return mapping.findForward("success");
		}
		request.setAttribute("flag", "LoginError");
		return mapping.findForward("failure");
	}

}
