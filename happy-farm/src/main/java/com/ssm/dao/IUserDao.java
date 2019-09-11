package com.ssm.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ssm.entity.User;

@Repository
public interface IUserDao {
	/**
	 * 登录
	 */
	public User login(Map<String, String> map);
	/*
	 * 注册
	 * */
	public void addUser(User user);
	/*
	 * 查找所有用户名
	 * */
	public List<User> findAllName(String username);
	
	public List<User> findAllUser();
}
