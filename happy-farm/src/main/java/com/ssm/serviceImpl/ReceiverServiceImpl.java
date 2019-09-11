package com.ssm.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ReceiverDao;
import com.ssm.entity.ReceiverInfo;
import com.ssm.service.ReceiverService;

@Service
public class ReceiverServiceImpl implements ReceiverService {
	@Autowired
	private ReceiverDao receiverDao;
	@Override
	public void addReceiverInfo(ReceiverInfo receiverInfo) {
		
		receiverDao.addReceiverInfo(receiverInfo);
	}
	@Override
	public List<ReceiverInfo> selectRInfo(int user_id) {
		return receiverDao.selectRInfo(user_id);
	}
	@Override
	public ReceiverInfo editRInfo(int id) {
		
		return receiverDao.editRInfo(id);
	}
	@Override
	public void  editRInfo2(ReceiverInfo receiverInfo) {
		
		receiverDao.editRInfo2(receiverInfo);
	}
	@Override
	public void deleteReceAddress(int id) {

		receiverDao.deleteReceAddress(id);
	}
	@Override
	public List<ReceiverInfo> selectReceByID(int id) {
		
		return receiverDao.selectReceByID(id);
	}
	
}
