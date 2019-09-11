package com.ssm.service;

import java.util.List;

import com.ssm.entity.Order;

public interface OrderService {
	/*
	 * 添加订单
	 * */
	public void addOrder(Order order);
	/*
	 * 查询订单
	 * */
	public List<Order> selectOrderByUsername(String username);
}
