package com.ssm.service;

import java.util.Map;

import com.ssm.entity.HappyFarmUser;

public interface UserService {
	
	HappyFarmUser getUserInfo(Map<String,String> map);
	
	int insertUser(String username,String password);
	
	int selectUserName(String username);

}
