package com.ssm.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.HappyFarmUser;
import com.ssm.entity.HappyFarmUserExample;
import com.ssm.entity.HappyFarmUserExample.Criteria;
import com.ssm.mapper.HappyFarmUserMapper;
import com.ssm.service.UserService;

@Service
public class UserServiceImp implements UserService {
	
	
	@Autowired
	private HappyFarmUserMapper HappyFarmUserMapper;

	@Override
	public HappyFarmUser getUserInfo(Map<String,String> map) {
		
		HappyFarmUserExample example=new HappyFarmUserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(map.get("username"));
		criteria.andPasswordEqualTo(map.get("password"));
		if(HappyFarmUserMapper.countByExample(example)!=0){
			HappyFarmUser user=HappyFarmUserMapper.selectByExample(example).get(0);
			return user;
		}else{
			return null;
		}
		
	}

	@Override
	public int insertUser(String username, String password) {
		
		HappyFarmUser user=new HappyFarmUser();
		user.setUsername(username);
		user.setPassword(password);
		int num=HappyFarmUserMapper.insert(user);
		return num;
	}
	/*
	 * 
	 * (non-Javadoc)
	 * @see com.ssm.service.UserService#selectUserName(java.lang.String)
	 * 根据用户名是否重复
	 */

	@Override
	public int selectUserName(String username) {
		HappyFarmUserExample example=new HappyFarmUserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(username);
		int a=(int) HappyFarmUserMapper.countByExample(example);
		return a;
	}

}
