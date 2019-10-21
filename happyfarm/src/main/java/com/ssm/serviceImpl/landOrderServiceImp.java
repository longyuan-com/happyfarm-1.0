package com.ssm.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.landCart;
import com.ssm.mapper.landOrderMapper;
import com.ssm.service.landOrderService;

@Service
public class landOrderServiceImp implements landOrderService {
	
	@Autowired
	private landOrderMapper landOrderMapper;

	@Override
	public List<landCart> selectOrderAll() {
		
	 List<landCart> list=landOrderMapper.seletOrderAll();
	
	 return list;
	}

}
