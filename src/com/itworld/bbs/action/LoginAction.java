package com.itworld.bbs.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.UserForm;
import com.itworld.bbs.model.User;

public class LoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		String username = new String(uf.getUsername().getBytes("ISO8859-1"),"GB18030");
		String password = new String(uf.getPassword().getBytes("ISO8859-1"),"GB18030");
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		UserDao userDao = new UserDao();
		List<User> userList = userDao.queryUserByNP(user);
		
		if(userList.size() <= 0) {
			request.setAttribute("flag", "LoginError");
			return mapping.findForward("failure");
		}else {
			user = userList.get(0);
		}
		
		request.getSession().setAttribute("user", user);
		
		request.setAttribute("flag", "LoginSuccess");
		return mapping.findForward("success");
	}

}
