package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.HappyFarmCart;
import com.ssm.service.UserOrderCartService;

@Controller
public class UserCartController {
	
	@Autowired
	private UserOrderCartService userOrderCartServiceImp;
		
	@RequestMapping("/findLcartlist")
	@ResponseBody
	public ModelAndView findLcartlist(Integer userid){
		//findLcartlist
		System.out.println(userid);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("cartlist", userOrderCartServiceImp.selectCartlist(userid));
		modelAndView.setViewName("buyer/mycart");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/useraddCart",method=RequestMethod.POST)
	@ResponseBody
	public int useraddCart(@RequestBody HappyFarmCart happyFarmCart){
		System.out.println(happyFarmCart);
		//查询购物车中是否存在
		int i=userOrderCartServiceImp.selectSameById(happyFarmCart.getUserid(),happyFarmCart.getProductid());
		if(i==0){
			return userOrderCartServiceImp.insertUserCart(happyFarmCart);
		}else{
			return 2;
		}
			
	}
	
	@RequestMapping(value="/delCartById",method=RequestMethod.GET)
	@ResponseBody
	public int delCartById(Integer id){
		System.out.println(id+"aaaaaa");
		int flag=userOrderCartServiceImp.delCartById(id);
		if(flag==1){
			return 1;
		}else{
			return 0;
		}
	}
	
	//更新购物车的信息
	@RequestMapping(value="/updateCart",method=RequestMethod.POST)
	@ResponseBody
	public int updateCart(@RequestBody HappyFarmCart happyFarmCart){
		
			System.err.println(happyFarmCart);
		return	userOrderCartServiceImp.updateLand(happyFarmCart);
		
		}
			
	
}
