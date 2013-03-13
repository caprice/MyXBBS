package com.itworld.bbs.form;

import org.apache.struts.action.ActionForm;

public class PageForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private int pageNo;

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
}
