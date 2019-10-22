package com.ssm.serviceImpl;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.HappyFarmCart;
import com.ssm.entity.HappyFarmLandinfo;
import com.ssm.entity.HappyFarmLandinfoExample;
import com.ssm.entity.HappyFarmLandinfoExample.Criteria;
import com.ssm.mapper.HappyFarmLandinfoMapper;
import com.ssm.service.LandinfoService;

@Service
public class LandinfoServiceServiceImpl implements LandinfoService  {

	@Autowired
	private HappyFarmLandinfoMapper happyFarmLandinfoMapper;

	@Override
	public void addHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo) {
		
		happyFarmLandinfoMapper.insert(HappyFarmLandinfo);
		
	}

	@Override
	public List<HappyFarmLandinfo> selectHappyFarmLandinfo() {
		
		return happyFarmLandinfoMapper.selectByExample(null);
	}

	@Override
	public HappyFarmLandinfo getByHappyFarmLandinfoId(int landid) {
		
		// TODO Auto-generated method stub
		return happyFarmLandinfoMapper.selectByPrimaryKey(landid);
	}

	@Override
	public void deletHappyFarmLandinfo(int landid) {
		// TODO Auto-generated method stub
		happyFarmLandinfoMapper.deleteByPrimaryKey(landid);
	}

	@Override
	public void updateHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo) {
		// TODO Auto-generated method stub
		
		happyFarmLandinfoMapper.updateByPrimaryKey(HappyFarmLandinfo);
		
	}

	@Override
	public int updateStstus(int landid, int status) {
		// TODO Auto-generated method stub
		return happyFarmLandinfoMapper.updatestatus(landid, status);
	}

//	@Override
//	public List<HappyFarmLandinfo> addHappyFarmLandinfoCartList(HttpServletRequest request,
//			List<HappyFarmCart> Carlist, int num, int HappyFarmLandinfoID) {
//		//根据土地ID查询土地的明细
//		int landID = Integer.parseInt(request.getParameter("landID"));
//		HappyFarmLandinfo land = happyFarmLandinfoMapper.selectByPrimaryKey(landID);
//		//判断土地是否存在
//		if(land==null) {
//			throw new RuntimeException("该土地不存在");
//		}
//		//根据商家的ID判断购物车里的商品ID是否存在
//		//LandCart lCart  = new LandCart();
//	HappyFarmCart lCart=searchLandCartByLandID(Carlist,request);
//		//如果购物车两个ID不相等说明购物车中不存在此土地
//		if(lCart==null) {
//			lCart=new HappyFarmCart();
//			lCart.setId(land.getLandid());
//			lCart.set(land.getLandname());
//			lCart.setLandPrice(land.getLandprice());
//			lCart.setNum(num);
//			Carlist.add(lCart);
//		}else {//判断商品是否存在购物车明细列表中
//			lCart.setNum(lCart.getNum()+num);
//			//如果小于0删除土地
//			if(lCart.getNum()<=0||num==0) {
//				Carlist.remove(lCart);
//			}
//		}
//		return Carlist;
//	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		HappyFarmLandinfoExample example=new HappyFarmLandinfoExample();
		
		Criteria criteria=example.createCriteria();
		criteria.andLandnameIsNull();
		return (int)happyFarmLandinfoMapper.countByExample(example);
	}
	
	public HappyFarmCart searchLandCartByLandID(List<HappyFarmCart> list,HttpServletRequest request) {
	int landID = Integer.parseInt(request.getParameter("landid"));
	for (HappyFarmCart landCart : list) {
		if(landCart.getId()==landID) {
			return landCart;
		}
	}
	return null;
}

	@Override
	public List<HappyFarmLandinfo> addHappyFarmLandinfoCartList(HttpServletRequest request,
			List<HappyFarmLandinfo> Carlist, int num, int HappyFarmLandinfoID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HappyFarmLandinfo> selectInfoStatus() {
		HappyFarmLandinfoExample example=new HappyFarmLandinfoExample();
		Criteria criteria=example.createCriteria();
		criteria.andStatusEqualTo(1);
		List<HappyFarmLandinfo> list=happyFarmLandinfoMapper.selectByExample(example);
		return list;
	}
	
	
	
	
	
//	@Override
//	public void addLand(HappyFarmLandinfo land) {
//		
//		landDao.addLand(land);
//	}
//	@Override
//	public List<HappyFarmLandinfo> selectLand() {
//	
//		return landDao.selectLand();
//	}
//	@Override
//	public List<HappyFarmLandinfo> getByLandId(int landID) {
//		
//		return landDao.getByLandId(landID);
//	}
//	@Override
//	public void deletLand(int landID) {
//		
//		landDao.deletLand(landID);
//	}
//	@Override
//	public void updateLand(HappyFarmLandinfo land) {
//		
//		landDao.updateLand(land);
//	}
//	@Override
//	public Land getByLandId2(int landID) {
//		Land land =landDao.getByLandId2(landID);
//		return land;
//		
//	}
//	@Override
//	public List<LandCart> addLandCartList(HttpServletRequest request,List<LandCart> Carlist, int num,int landID) {
//		//根据土地ID查询土地的明细
//		//int landID = Integer.parseInt(request.getParameter("landID"));
//		Land land = landDao.getByLandId2(landID);
//		//判断土地是否存在
//		if(land==null) {
//			throw new RuntimeException("该土地不存在");
//		}
//		//根据商家的ID判断购物车里的商品ID是否存在
//		//LandCart lCart  = new LandCart();
//		LandCart lCart=searchLandCartByLandID(Carlist,request);
//		//如果购物车两个ID不相等说明购物车中不存在此土地
//		if(lCart==null) {
//			lCart=new LandCart();
//			lCart.setId(land.getLandID());
//			lCart.setLandImg(land.getLandImg());
//			lCart.setLandName(land.getLandName());
//			lCart.setLandPrice(land.getLandPrice());
//			lCart.setNum(num);
//			Carlist.add(lCart);
//		}else {//判断商品是否存在购物车明细列表中
//			lCart.setNum(lCart.getNum()+num);
//			//如果小于0删除土地
//			if(lCart.getNum()<=0||num==0) {
//				Carlist.remove(lCart);
//			}
//		}
//		return Carlist;
//	}	
//	/*
//	 * 根据土地列表土地ID在购物车明细列表中查询明细对象
//	 * */
//	public LandCart searchLandCartByLandID(List<LandCart> list,HttpServletRequest request) {
//		int landID = Integer.parseInt(request.getParameter("landID"));
//		for (LandCart landCart : list) {
//			if(landCart.getId()==landID) {
//				return landCart;
//			}
//		}
//		return null;
//	}
//	@Override
//	public int getCount() {	
//		int count =landDao.getCount();
//		return count;	
//	}
//	@Override
//	/*
//	 * 
//	 * (non-Javadoc)
//	 * @see com.ssm.service.LandService#updateStstus(int, int)
//	 */
//	public int updateStstus(int landId, int status) {
//		
//		int num=landDao.updateStstus(landId, status);
//		return num;
//	}
//	@Override
//	public void addHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo) {
//		// TODO Auto-generated method stub
//		
//	}
//	@Override
//	public List<HappyFarmLandinfo> selectHappyFarmLandinfo() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public List<HappyFarmLandinfo> getByHappyFarmLandinfoId(int HappyFarmLandinfoID) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public void deletHappyFarmLandinfo(int HappyFarmLandinfoID) {
//		// TODO Auto-generated method stub
//		
//	}
//	@Override
//	public void updateHappyFarmLandinfo(HappyFarmLandinfo HappyFarmLandinfo) {
//		// TODO Auto-generated method stub
//		
//	}
//	@Override
//	public HappyFarmLandinfo getByHappyFarmLandinfoId2(int HappyFarmLandinfoID) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public List<HappyFarmLandinfo> addHappyFarmLandinfoCartList(HttpServletRequest request,
//			List<HappyFarmLandinfo> Carlist, int num, int HappyFarmLandinfoID) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
