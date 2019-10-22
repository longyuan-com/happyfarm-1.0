package com.ssm.service;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.ssm.entity.HappyFarmCart;
import com.ssm.entity.HappyFarmLandinfo;

public interface LandinfoService {
	
	/**
	 * 添加土地
	 * */
	public void addHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo);
	/**
	 * 查询土地
	 * */
	public List<HappyFarmLandinfo> selectHappyFarmLandinfo();
	
	/**
	 * 查询上线的土地
	 * */
	public List<HappyFarmLandinfo> selectInfoStatus();
	/**
	 * 根据土地编号进行查询
	 * */
	public HappyFarmLandinfo getByHappyFarmLandinfoId(int landid);
	/**
	 * 根据土地编号进行删除土地
	 * */
	public void deletHappyFarmLandinfo(int landid);
	/**
	 * 根据土地编号编辑土地
	 * @return 
	 * */
	public void updateHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo);
	
	public int updateStstus(int landid,int status);
	/**
	 * 添加土地到购物车
	 * */
	public List<HappyFarmLandinfo> addHappyFarmLandinfoCartList(HttpServletRequest request,List<HappyFarmLandinfo> Carlist,int num,int HappyFarmLandinfoID);
	/*
	 * 查询数据库中所有的土地条数
	 * */
	public int getCount();
	
	public HappyFarmCart searchLandCartByLandID(List<HappyFarmCart> list,HttpServletRequest request);
	
}
