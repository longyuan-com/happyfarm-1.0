package com.ssm.serviceImpl;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssm.dao.LandDao;
import com.ssm.entity.Land;
import com.ssm.entity.LandCart;
import com.ssm.service.LandService;

@Service("LandService")
public class LandServiceImpl implements LandService {

	@Autowired
	private LandDao landDao;
	@Override
	public void addLand(Land land) {
		
		landDao.addLand(land);
	}
	@Override
	public List<Land> selectLand() {
	
		return landDao.selectLand();
	}
	@Override
	public List<Land> getByLandId(int landID) {
		
		return landDao.getByLandId(landID);
	}
	@Override
	public void deletLand(int landID) {
		
		landDao.deletLand(landID);
	}
	@Override
	public void updateLand(Land land) {
		
		landDao.updateLand(land);
	}
	@Override
	public Land getByLandId2(int landID) {
		Land land =landDao.getByLandId2(landID);
		return land;
		
	}
	@Override
	public List<LandCart> addLandCartList(HttpServletRequest request,List<LandCart> Carlist, int num,int landID) {
		//根据土地ID查询土地的明细
		//int landID = Integer.parseInt(request.getParameter("landID"));
		Land land = landDao.getByLandId2(landID);
		//判断土地是否存在
		if(land==null) {
			throw new RuntimeException("该土地不存在");
		}
		//根据商家的ID判断购物车里的商品ID是否存在
		//LandCart lCart  = new LandCart();
		LandCart lCart=searchLandCartByLandID(Carlist,request);
		//如果购物车两个ID不相等说明购物车中不存在此土地
		if(lCart==null) {
			lCart=new LandCart();
			lCart.setId(land.getLandID());
			lCart.setLandImg(land.getLandImg());
			lCart.setLandName(land.getLandName());
			lCart.setLandPrice(land.getLandPrice());
			lCart.setNum(num);
			Carlist.add(lCart);
		}else {//判断商品是否存在购物车明细列表中
			lCart.setNum(lCart.getNum()+num);
			//如果小于0删除土地
			if(lCart.getNum()<=0||num==0) {
				Carlist.remove(lCart);
			}
		}
		return Carlist;
	}	
	/*
	 * 根据土地列表土地ID在购物车明细列表中查询明细对象
	 * */
	public LandCart searchLandCartByLandID(List<LandCart> list,HttpServletRequest request) {
		int landID = Integer.parseInt(request.getParameter("landID"));
		for (LandCart landCart : list) {
			if(landCart.getId()==landID) {
				return landCart;
			}
		}
		return null;
	}
	@Override
	public int getCount() {	
		int count =landDao.getCount();
		return count;	
	}
}
