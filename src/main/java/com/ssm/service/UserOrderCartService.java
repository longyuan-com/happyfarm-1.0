package com.ssm.service;

import java.util.List;

import com.ssm.entity.HappyFarmCart;

public interface UserOrderCartService {
	
	int  insertUserCart(HappyFarmCart happyFarmCart);
	
	List<HappyFarmCart> selectCartlist(int userid);

	int  delCartById(int id);
	
	/*
	 * 查询购物车是否已存在该商品
	 */

	int selectSameById(int userid,int id);
	
	int updateLand(HappyFarmCart happyFarmCart);
}
