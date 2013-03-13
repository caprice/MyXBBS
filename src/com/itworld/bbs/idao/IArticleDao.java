package com.itworld.bbs.idao;

import java.util.List;

import com.itworld.bbs.model.BBS;

public interface IArticleDao {

	public void addArticle(BBS bbs);
	
	public void modifyArticle(BBS bbs);
	
	public BBS queryArticleByTCP(BBS bbs);
	
	public int queryRootCount();
	
	public int queryTotleCount();
	
	public BBS queryArticleById(int id);
	
	public List<BBS> queryArticleByRootId();

	public List<BBS> queryArticleByRootId(int rootid);
	
}
