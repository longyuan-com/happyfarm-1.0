package com.ssm.service;

import java.util.Map;

import com.ssm.entity.Manager;

public interface ManagerService {
	
	/*
	 * 管理员登录
	 * */
	public Manager login(Map<String,String> map);
}
