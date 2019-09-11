package com.ssm.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.OrderDao;
import com.ssm.entity.Order;
import com.ssm.service.OrderService;

@Service("OrderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public void addOrder(Order order) {
		orderDao.addOrder(order);
	}

	@Override
	public List<Order> selectOrderByUsername(String username) {
		
		return orderDao.selectOrderByUsername(username);
	}

}
