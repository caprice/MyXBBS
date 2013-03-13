package com.itworld.bbs.idao;

import java.util.List;

import com.itworld.bbs.model.User;

public interface IUserDao {
	
	public void addUser(User user);
	
	public void addTX(User user,String path);
	
	public void deleteUser(User user);
	
	public void modifyUser(User user);
	
	public List<User> queryAllUser();
	
	public User queryUserByUserNP(User user);
	
	public User queryUserByUserId(User user);
	
	public List<User> queryUserByNP(User user);
}
