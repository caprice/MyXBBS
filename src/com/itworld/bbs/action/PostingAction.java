package com.itworld.bbs.action;

import java.text.SimpleDateFormat;
import java.util.Date;

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

public class PostingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArticleForm af = (ArticleForm)form;
		String username_form =new String(af.getUsername().getBytes("ISO8859-1"),"GB18030"); 
		System.out.println(username_form);

		User user = (User)request.getSession().getAttribute("user");
		String username_session = "";
		if(user != null){
			username_session = user.getUsername();
		}
		
		if(!username_form.equals("游客") && !username_form.equals(username_session)) {
			request.setAttribute("flag", "PostFailure");
			return mapping.findForward("failure");
		}
		
		if(username_form.equals("游客")) {
			UserDao userDao = new UserDao();
			user = new User();
			user.setUserid(4);
			user = userDao.queryUserByUserId(user);
		}
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:ss:mm");
		String pdate = sdf.format(d);
		
		int rootid = -1;
		
		BBS bbs = new BBS();
		bbs.setPid(0);
		bbs.setRootid(rootid);
		String title =new String(af.getTitle().getBytes("ISO8859-1"),"GB18030"); 
		bbs.setTitle(title);
		String content =new String(af.getContent().getBytes("ISO8859-1"),"GB18030"); 
		bbs.setContent(content);
		bbs.setPdate(pdate);
		bbs.setIsleaf(1);
		bbs.setHit(0);
		bbs.setReplyNum(0);
		bbs.setUser(user);
		
		ArticleDao ad = new ArticleDao();
		ad.addArticle(bbs);
		
		bbs = ad.queryArticleByTCP(bbs);
		bbs.setRootid(bbs.getId());
		ad.modifyArticle(bbs);
		
		if(!username_form.equals("游客")) {
			user.setAppearNum(user.getAppearNum()+1);
			user.setScore(user.getScore()+1);
			
			if(0 < user.getScore() && user.getScore() <= 300) {
				user.setLevel(1);
			}else if(301 <= user.getScore() && user.getScore() <= 1000) {
				user.setLevel(2);
			}else if(1001 <= user.getScore() && user.getScore() <= 5000) {
				user.setLevel(3);
			}else if(5001 <= user.getScore() && user.getScore() <= 10000) {
				user.setLevel(4);
			}else if(10001 <= user.getScore() && user.getScore() <= 50000) {
				user.setLevel(5);
			}else if(50001 <= user.getScore() && user.getScore() <= 100000) {
				user.setLevel(6);
			}else if(100001 <= user.getScore() && user.getScore() <= 500000) {
				user.setLevel(7);
			}
			
			UserDao userDao = new UserDao();
			userDao.modifyUser(user);
		}

		request.setAttribute("flag", "PostSuccess");
		return mapping.findForward("success");
	}

}
