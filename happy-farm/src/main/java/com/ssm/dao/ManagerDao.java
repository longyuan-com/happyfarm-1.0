package com.ssm.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ssm.entity.Manager;

@Repository
public interface ManagerDao {
	/*
	 * 管理员登录
	 * */
	public Manager login(Map<String,String> map);
}
