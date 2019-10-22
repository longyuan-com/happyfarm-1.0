package com.ssm.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.HappyFarmManager;
import com.ssm.mapper.HappyFarmManagerMapper;
import com.ssm.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private HappyFarmManagerMapper happyFarmManagerMapper;
	@Override
	public HappyFarmManager login(Map<String,String> map) {
	
		return  happyFarmManagerMapper.selectManger(map);
	}

}
