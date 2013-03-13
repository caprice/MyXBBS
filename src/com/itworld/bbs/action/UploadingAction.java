package com.itworld.bbs.action;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.itworld.bbs.dao.UserDao;
import com.itworld.bbs.form.UploadForm;
import com.itworld.bbs.model.User;

public class UploadingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UploadForm uaf = (UploadForm)form;
		
		FormFile myFile = uaf.getMyFile();
		
		if (myFile == null) {
			request.setAttribute("flag", "UploadTXFailure");
			return mapping.findForward("failure");
		}
		
		FileOutputStream fos = new FileOutputStream("../webapps/XBBS2010/tx/" + myFile.getFileName());
		fos.write(myFile.getFileData());
		fos.flush();
		fos.close();
		
		User user = (User) request.getSession().getAttribute("user");
		
		UserDao userDao = new UserDao();
		userDao.addTX(user, "./tx/" + myFile.getFileName());
		
		request.setAttribute("flag", "UploadTXSuccess");
		
		return mapping.findForward("success");
	}

}
