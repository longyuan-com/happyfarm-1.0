package com.ssm.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.HappyFarmCart;
import com.ssm.mapper.HappyFarmCartMapper;
import com.ssm.service.OrderService;


@Service
public class OrderServiceImp implements OrderService {

	@Autowired
	public  HappyFarmCartMapper happyFarmCartMapper;
	
	@Override
	public List<HappyFarmCart> getOrderList() {
		
		return happyFarmCartMapper.selectByExample(null);
	}

}
