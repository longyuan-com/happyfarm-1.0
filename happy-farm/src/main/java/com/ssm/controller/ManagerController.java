package com.ssm.controller;

import java.util.HashMap;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/*import org.apache.jasper.tagplugins.jstl.core.Out;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ssm.entity.HappyFarmManager;
import com.ssm.service.ManagerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("/login")
	public String login() {
		return "admin/manageLogin";
		
	}
	
	@RequestMapping("/exitpage")
	public String exit(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:login";
	}
	/*
	 * 管理员登录
	 * */
	@RequestMapping("/checkLogin")
	public String logincheck(HttpServletRequest request,HttpServletResponse response) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("name", request.getParameter("name"));
		map.put("password", request.getParameter("password"));
		HappyFarmManager manager =managerService.login(map);
		String code = request.getParameter("code");
		String word = (String)request.getSession().getAttribute("checkcode_session");
		if(manager!=null&&code.equals(word)) {
			HttpSession session = request.getSession();
			session.setAttribute("manager", manager);
			return "admin/happy-farm-1";
		}else {
			return "admin/manageLogin";
		}
	}

}
