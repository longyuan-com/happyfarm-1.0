package com.ssm.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.alibaba.fastjson.JSON;
import com.ssm.entity.LandCart;
import com.ssm.entity.Order;
import com.ssm.entity.ReceiverInfo;
import com.ssm.entity.User;
import com.ssm.serviceImpl.LandServiceImpl;
import com.ssm.serviceImpl.OrderServiceImpl;
import com.ssm.util.CookieUtils;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private LandServiceImpl landService;
	
	@Autowired
	private OrderServiceImpl orderService;
	/*
	 * 商品添加到cookie
	 * */
	@RequestMapping("/addLandCar")
	public String addLandCar(HttpServletRequest request, HttpServletResponse response) {
		try {
			int num = 1;
			int landID = Integer.parseInt(request.getParameter("landID"));
			// 从cookie中提取购物车
			List<LandCart> cartList = findLandCartList(request);
			// 调用服务方法操作购物车
			cartList = landService.addLandCartList(request, cartList, num, landID);
			// 将新的购物车存入cookie
			String carLiString = JSON.toJSONString(cartList);
			CookieUtils.setCookie(request, response, "cartList", carLiString, 86400, "UTF-8");
			return "addSuccess";
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "login";
		}
	}

	// 从cookie中提取购物车详情
	@RequestMapping("/findLandCartList")
	public List<LandCart> findLandCartList(HttpServletRequest request) {
		String cartLiString = CookieUtils.getCookieValue(request, "cartList", "UTF-8");
		if (cartLiString == null || cartLiString.equals("")) {
			cartLiString = "[]";
		}
		List<LandCart> cartList_cookie = JSON.parseArray(cartLiString, LandCart.class);
		return cartList_cookie;
	}

	// 返回页面数据
	@RequestMapping("/findLandCartList2")
	public String cartList(HttpServletRequest request, HttpServletResponse response) {
		List<LandCart> list = findLandCartList2(request, response);
		// model.addAttribute("list", list);
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		return "CKGWC";
	}

	// 用于页面展示数据
	public List<LandCart> findLandCartList2(HttpServletRequest request, HttpServletResponse response) {
		String cartLiString = CookieUtils.getCookieValue(request, "cartList", "UTF-8");
		if (cartLiString == null || cartLiString.equals("")) {
			cartLiString = "[]";
		}
		List<LandCart> cartList_cookie = JSON.parseArray(cartLiString, LandCart.class);
		return cartList_cookie;
	}

	/*
	 * 修改购物车商品的数量\或者删除购物车单个商品
	 */
	@RequestMapping("/findLandCartList3")
	public String cartList2(HttpServletRequest request, HttpServletResponse response) {
		int num = Integer.parseInt(request.getParameter("number"));
		int landID = Integer.parseInt(request.getParameter("landID"));
		// 从cookie中提取购物车
		List<LandCart> cartList = findLandCartList(request);
		// 调用服务方法操作购物车
		cartList = landService.addLandCartList(request, cartList, num, landID);
		// 将新的购物车存入cookie
		String carLiString = JSON.toJSONString(cartList);
		CookieUtils.setCookie(request, response, "cartList", carLiString, 86400, "UTF-8");
		return "redirect:/cart/findLandCartList2";
	}
	/*
	 * 跳转到结算页面
	 */
	@RequestMapping("/JianSuan")
	public String jianSuan() {
		return "JianSuan";
	}
	/*
	 * 结算页-商品显示
	 * */
	@RequestMapping("/JianSuanList")
	public String  jianSuanList(HttpServletRequest request,HttpServletResponse response,Model model ) {
		HttpSession session =request.getSession();
		@SuppressWarnings("unchecked")//用于取消一些编译器产生的警告对代码左侧行列的遮挡，有时候这会挡住我们断点调试时打的断点
		List<LandCart> laCartsList = (List<LandCart>) session.getAttribute("list");
		session.setAttribute("laCartsList", laCartsList);
		return  "JianSuan";
	}
	/*
	 * 提交订单
	 * */
	@RequestMapping("/tjdd")
	public String tiJiao(HttpServletRequest request,HttpServletResponse response) {
		
		return "TJDD-SUCCESS";
	}
	/*
	 * 提交订单对订单信息进行整合
	 * */
	@RequestMapping("/ddInfo")
	public String dDInfo(HttpServletRequest request,HttpServletResponse response) {
		//获取0~9总共15位随机数的唯一订单编号
		int r1=(int)(Math.random()*(10));//产生2个0-9的随机数
		int r2=(int)(Math.random()*(10));
		long now = System.currentTimeMillis();//一个13位的时间戳
		String paymentID =String.valueOf(r1)+String.valueOf(r2)+String.valueOf(now);
		//System.out.println(paymentID);
		HttpSession session = request.getSession();
		//获取购买的商品  userid 收货地址统一放到购买商品循环里
		@SuppressWarnings("unchecked")
		List<LandCart> laCartsList = (List<LandCart>) session.getAttribute("list");
		@SuppressWarnings("unchecked")
		List<ReceiverInfo> morenRece =(List<ReceiverInfo>) session.getAttribute("morenRece"); 
		for (LandCart landCart : laCartsList) {
			//获取当前用户
			User user  =(User) session.getAttribute("user");
			try {
				for (ReceiverInfo morenRece2 : morenRece) {
					Order order =new Order();
					order.setOrderID(paymentID);
					order.setUsername(user.getUsername());
					order.setGoodsName(landCart.getLandName());
					order.setGoodsPrice(landCart.getLandPrice());
					order.setGoodsNum(landCart.getNum());
					order.setReceiverName(morenRece2.getReceiver_name());
					order.setReceiverAddress(morenRece2.getReceiver_address());
					order.setReceiverPhone(morenRece2.getReceiver_phone());
					orderService.addOrder(order);
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.err.println("输入地址为空");
				return "TJDD-FAIL";
			}
			
		}
		return "redirect:/cart/orderHX";
	}
	/*
	 * 收银台页面订单数据回显
	 * */
	@RequestMapping("/orderHX")
	public String  orderHx(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user =(User) session.getAttribute("user");
		String username=user.getUsername();
		List<Order> orderList = orderService.selectOrderByUsername(username);
		session.setAttribute("orderList", orderList);
		return "TJDD-SUCCESS";
	}
	
}
