package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.util.getOrderIdByTime;

@Controller
@RequestMapping("/user")
public class UserOrderController {
	
	@RequestMapping("/orderPage")
	public  ModelAndView orderPage(Integer productId){
		String code=getOrderIdByTime.getOrderIdByTime(productId);
		ModelAndView modelandview=new ModelAndView();
		modelandview.addObject("orderid", code);
		modelandview.setViewName("buyer/paymenting2");
		return modelandview;
	}

}
