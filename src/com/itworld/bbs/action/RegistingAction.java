package com.itworld.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.UserForm;
import com.itworld.bbs.model.User;

public class RegistingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		
		if(!uf.getPassword().equals(uf.getRepassword())) {
			request.setAttribute("flag", "TowPassNotEquals");
			return mapping.findForward("failure");
		}
		
		User user = new User();
		user.setUsername(uf.getUsername());
		user.setPassword(uf.getPassword());
		user.setAppearNum(0);
		user.setLevel(1);
		user.setScore(0);

		UserDao userDao = new UserDao();
		userDao.addUser(user);
		
		user = userDao.queryUserByUserNP(user);
		request.getSession().setAttribute("user", user);
		
		request.setAttribute("flag", "AddUserSuccess");
		return mapping.findForward("success");
	}

}
