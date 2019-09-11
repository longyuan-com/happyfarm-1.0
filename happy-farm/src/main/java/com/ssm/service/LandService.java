package com.ssm.service;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import com.ssm.entity.Land;
import com.ssm.entity.LandCart;

public interface LandService {
	
	/**
	 * 添加土地
	 * */
	public void addLand(Land land);
	/**
	 * 查询土地
	 * */
	public List<Land> selectLand();
	/**
	 * 根据土地编号进行查询
	 * */
	public List<Land> getByLandId(int landID);
	/**
	 * 根据土地编号进行删除土地
	 * */
	public void deletLand(int landID);
	/**
	 * 根据土地编号编辑土地
	 * */
	public void updateLand(Land land);
	/**
	 * 根据土地ID查询土地
	 * */
	public Land getByLandId2(int landID);
	/**
	 * 添加土地到购物车
	 * */
	public List<LandCart> addLandCartList(HttpServletRequest request,List<LandCart> Carlist,int num,int landID);
	/*
	 * 查询数据库中所有的土地条数
	 * */
	public int getCount();
}
