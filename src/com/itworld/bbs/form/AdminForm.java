package com.itworld.bbs.form;

import org.apache.struts.action.ActionForm;

public class AdminForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private String adminname;
	
	private String adminpass;

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getAdminpass() {
		return adminpass;
	}

	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}
}
