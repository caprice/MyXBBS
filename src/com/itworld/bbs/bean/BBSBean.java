package com.itworld.bbs.bean;

import com.itworld.bbs.model.BBS;

public class BBSBean {

	private BBS currentBbs;  
	
	private BBS parentBbs;
	
	private BBS rootBbs;

	public BBS getCurrentBbs() {
		return currentBbs;
	}

	public void setCurrentBbs(BBS currentBbs) {
		this.currentBbs = currentBbs;
	}

	public BBS getParentBbs() {
		return parentBbs;
	}

	public void setParentBbs(BBS parentBbs) {
		this.parentBbs = parentBbs;
	}

	public BBS getRootBbs() {
		return rootBbs;
	}

	public void setRootBbs(BBS rootBbs) {
		this.rootBbs = rootBbs;
	}
}
