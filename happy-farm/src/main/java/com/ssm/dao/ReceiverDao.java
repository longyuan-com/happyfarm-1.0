package com.ssm.dao;

import java.util.List;

import com.ssm.entity.ReceiverInfo;

public interface ReceiverDao {
	
	/*
	 * 增加收货地址
	 * */
	public void  addReceiverInfo(ReceiverInfo receiverInfo);
	/*
	 * 查询收货地址
	 * */
	public List<ReceiverInfo> selectRInfo(int user_id);
	/*
	 * 编辑收货地址
	 * */
	public ReceiverInfo editRInfo(int id);
	/*
	 * 提交编辑后的收货地址
	 * */
	public void  editRInfo2(ReceiverInfo receiverInfo);
	/*
	 * 根据地址id删除地址
	 * */
	public void deleteReceAddress(int id);
	/*
	 * 根据id查询收货地址
	 * */
	public List<ReceiverInfo> selectReceByID(int id);
	
}
