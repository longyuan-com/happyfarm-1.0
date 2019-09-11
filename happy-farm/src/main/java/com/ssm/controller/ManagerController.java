package com.ssm.controller;

import java.util.HashMap;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.entity.Manager;
import com.ssm.service.ManagerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	private ManagerService ms;
	
	
	/*
	 * 管理员登录
	 * */
	@RequestMapping("/checkLogin")
	public String login(HttpServletRequest request,HttpServletResponse response) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("name", request.getParameter("name"));
		map.put("password", request.getParameter("password"));
		Manager manager =ms.login(map);
		String code = request.getParameter("code");
		System.out.println(code);
		String word = (String)request.getSession().getAttribute("checkcode_session");
		System.out.println(word);
		if(manager!=null&&code.equals(word)) {
			HttpSession session = request.getSession();
			session.setAttribute("manager", manager);
			return "happy-farm-1";
		}else {
			return "manageLogin";
		}
	}
	/*
	 * 跳转到土地管理页面
	 * */
	@RequestMapping("/farm-2")
	public String farm2() {
		return "happy-farm-2";
	}
	/*
	 * 跳转到添加土地页面
	 * */
	@RequestMapping("/addLand")
	public String addLand() {
		return "addLand";
	}
	/*
	 * 跳转到编辑土地页面
	 * */
	@RequestMapping("/tdbj")
	public String updateLand() {
		return "updateLand";
	}
}
