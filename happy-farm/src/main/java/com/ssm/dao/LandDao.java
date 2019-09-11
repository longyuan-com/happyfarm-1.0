package com.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.entity.Land;

@Repository
public interface LandDao {
	/*
	 * 增加土地
	 * */
	public void addLand(Land land);
	/*
	 * 查询所有土地
	 * */
	public List<Land> selectLand();
	/*
	 *   根据土地编号进行查询
	 * */
	public List<Land> getByLandId(int landID);
	/*
	 * 编辑土地
	 * */
	public void updateLand(Land land);
	/*
	 * 根据土地ID删除土地
	 * */
	public void deletLand(int landID);
	/*
	 * 根据土地ID查询土地
	 * */
	public Land getByLandId2(int landID);
	/*
	 * 查询数据库中所有的土地条数
	 * */
	public int getCount();
}
