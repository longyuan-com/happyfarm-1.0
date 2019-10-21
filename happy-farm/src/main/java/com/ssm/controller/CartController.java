package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.HappyFarmCart;
import com.ssm.entity.landCart;
import com.ssm.service.OrderService;
import com.ssm.service.landOrderService;

@Controller
public class CartController {
	
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private landOrderService landOrderService;
	
//	@RequestMapping("orderPage")
//	public String orderPage(){
//		return "admin/manage-order";
//	}
//	
	
	@RequestMapping("/orderlist")
	public List<HappyFarmCart> getOrderList(){
		List<HappyFarmCart> list=orderService.getOrderList();
		return list;
		
	}	
	/**
	 * 管理员订单列表
	 * @return
	 */
	
	@RequestMapping(value="/orderPage",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView OrderAllList(){
		
		ModelAndView modelAndView=new ModelAndView();
		List<landCart> list=landOrderService.selectOrderAll();
		modelAndView.addObject("orderlist", list);
		modelAndView.setViewName("admin/manage-order");
		return modelAndView;
		
	}	
	
	//测试用
	@RequestMapping("/orderlistaa")
	@ResponseBody
	public List<landCart>  orderPage(){
		return landOrderService.selectOrderAll();
	}
	
	
	

}
