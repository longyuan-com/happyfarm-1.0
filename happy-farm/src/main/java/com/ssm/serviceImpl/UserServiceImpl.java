package com.ssm.serviceImpl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssm.dao.IUserDao;
import com.ssm.entity.User;
import com.ssm.service.IUserService;

@Service("happy_farm_user")
public class UserServiceImpl implements IUserService {
	
//	@Resource
	@Autowired
	private IUserDao userDao;

	public User login(Map<String, String> map) {
		return userDao.login(map);
	}

	@Override
	public void addUser(User user) {
		
		userDao.addUser(user);
	}

	@Override
	public List<User> findAllName(String username) {
	
		return userDao.findAllName(username);
	}

	@Override
	public List<User> findAllUser() {
		
		return userDao.findAllUser();
	}

}
