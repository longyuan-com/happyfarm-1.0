package com.ssm.service;
import java.util.Map;

import com.ssm.entity.HappyFarmManager;

public interface ManagerService {
	
	/*
	 * 管理员登录
	 * */
	public HappyFarmManager login(Map<String,String> map);
}
