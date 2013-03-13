package com.itworld.bbs.form;

import org.apache.struts.action.ActionForm;

public class UserForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	
	private int userid;

	private String username;
	
	private String password;
	
	private String repassword;
	
	private int appearNum;
	
	private String level;
	
	private int score;
	
	private String imagePath;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public int getAppearNum() {
		return appearNum;
	}

	public void setAppearNum(int appearNum) {
		this.appearNum = appearNum;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
}
