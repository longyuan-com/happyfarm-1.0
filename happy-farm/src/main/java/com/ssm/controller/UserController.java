package com.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.HappyFarmUser;
import com.ssm.service.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/")
	public String index(){
		return "../index";
	}
	
	@RequestMapping("/user/login")
	public String userlogin(){
		return "buyer/login";
	}
	
	@RequestMapping("/user/exitpage")
	public String exit(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:login";
	}
	
	
	@RequestMapping("/user/checkLogin")
	public String logincheck(HttpServletRequest request,HttpServletResponse response) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("username", request.getParameter("username"));
		map.put("password", request.getParameter("password"));
		HappyFarmUser User =userService.getUserInfo(map);
		String code = request.getParameter("code");
		String word = (String)request.getSession().getAttribute("checkcode_session");
		if(User!=null&&code.equals(word)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", User);
			session.setAttribute("username", User.getUsername());
			session.setAttribute("userid", User.getId());
		System.out.print(User.getUsername());
			return "../index";
		}else {
			return "buyer/login";
		}
	}
	
	@RequestMapping("/user/regist")
	public String register(){
		
		return "buyer/register";
		
	}
	
	@RequestMapping(value="/user/insertRegist",method=RequestMethod.POST)
	public String insertUser(@RequestParam("username") String username,
			@RequestParam("password") String password){
		
	int flag=userService.insertUser(username, password);
		if(flag==0){
			return "buyer/registFail";
		}else{
			return "buyer/registSuccess";
		}
	
	}
	
	//checkUsername
	
	@RequestMapping(value="/user/checkUsername",method=RequestMethod.GET)
	@ResponseBody
	public int checkregister(String username){
			if(username.length()!=0){
			if(userService.selectUserName(username)==0){
				
				return 1;
			}else{
				return 0;
				}
			}else{
				return 0;
			}
		}
	
	@RequestMapping(value="/user/hapintroduce",method=RequestMethod.GET)
	public String hapintroduce(){
		
		return "buyer/hapintroduce";
		}
	
	@RequestMapping(value="/user/happyrules",method=RequestMethod.GET)
	public String happyrules(){
		
		return "buyer/happyrules";
		}
	
	
	
	///user/coststandard
	@RequestMapping(value="/user/coststandard",method=RequestMethod.GET)
	public String coststandard(){
		
		return "buyer/coststandard";
		}
	
	//user/farmintroduce
	@RequestMapping(value="/user/farmintroduce",method=RequestMethod.GET)
	public String farmintroduce(){
		
		return "buyer/farmintroduce";
		}

	
	//user/scenicspot
	@RequestMapping(value="/user/scenicspot",method=RequestMethod.GET)
	public String scenicspot(){
		
		return "buyer/scenicspot";
		}
	
	//user/supfacilities
		@RequestMapping(value="/user/supfacilities",method=RequestMethod.GET)
		public String supfacilities(){
			
			return "buyer/supfacilities";
			}
		
	
		@RequestMapping(value="/user/vegeactivity",method=RequestMethod.GET)
		public String vegeactivity(){
			
			return "buyer/vegeactivity";
			}
		
	
		@RequestMapping(value="/user/vegeforsale",method=RequestMethod.GET)
		public String vegeforsale(){
			
			return "buyer/vegeforsale";
			}
	
		
}
