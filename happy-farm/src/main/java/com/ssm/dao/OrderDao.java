package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.entity.Order;

@Repository
public interface OrderDao {
	/*
	 * 添加订单
	 * */
	public void addOrder(Order order);
	/*
	 * 查询订单
	 * */
	public List<Order> selectOrderByUsername(String username);
}
