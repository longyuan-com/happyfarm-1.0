package com.ssm.serviceImpl;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ManagerDao;
import com.ssm.entity.Manager;
import com.ssm.service.ManagerService;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerDao md;
	@Override
	public Manager login(Map<String,String> map) {
	
		return md.login(map);
	}

}
