package com.ssm.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.HappyFarmCart;
import com.ssm.entity.HappyFarmCartExample;
import com.ssm.entity.HappyFarmCartExample.Criteria;
import com.ssm.mapper.HappyFarmCartMapper;
import com.ssm.service.UserOrderCartService;

@Service
public class UserOrderCartServiceImp implements UserOrderCartService {
	
	@Autowired
	private HappyFarmCartMapper happyFarmCartMapper;
	
	@Override
	public int insertUserCart(HappyFarmCart happyFarmCart) {
		int a=happyFarmCartMapper.insert(happyFarmCart);
		return a;
	}

	public List<HappyFarmCart> selectCartlist(int userid) {

		return happyFarmCartMapper.selectCart(userid);
	}

	@Override
	public int delCartById(int id) {
		HappyFarmCartExample example=new HappyFarmCartExample();
		Criteria cirteria=example.createCriteria();
		cirteria.andProductidEqualTo(id);
		return happyFarmCartMapper.deleteByExample(example);
	}

	@Override
	public int selectSameById(int userid,int id) {
		HappyFarmCartExample example=new HappyFarmCartExample();
		Criteria cirteria=example.createCriteria();
		cirteria.andUseridEqualTo(userid);
		cirteria.andProductidEqualTo(id);
		return 	(int) happyFarmCartMapper.countByExample(example);
	}

	@Override
	public int updateLand(HappyFarmCart happyFarmCart) {
		HappyFarmCartExample example=new HappyFarmCartExample();
		Criteria cirteria=example.createCriteria();
		cirteria.andProductidEqualTo(happyFarmCart.getProductid());
		cirteria.andUseridEqualTo(happyFarmCart.getUserid());
		return happyFarmCartMapper.updateByExample(happyFarmCart, example);
	}

}
