package com.itworld.bbs.model;

import java.util.Set;

public class User {
	
	private int userid;

	private String username;
	
	private String password;
	
	private int appearNum;
	
	private int level;
	
	private int score;
	
	private String imagePath;
	
	private Set<BBS> bbs;

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

	public int getAppearNum() {
		return appearNum;
	}

	public void setAppearNum(int appearNum) {
		this.appearNum = appearNum;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
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

	public Set<BBS> getBbs() {
		return bbs;
	}

	public void setBbs(Set<BBS> bbs) {
		this.bbs = bbs;
	}

}
