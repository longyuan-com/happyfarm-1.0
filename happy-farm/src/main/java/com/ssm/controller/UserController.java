package com.ssm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.ssm.entity.User;
import com.ssm.service.IUserService;

/**
 * 
 * @author yangwenjian
 */
@Controller
@RequestMapping("/user")
public class UserController {

//	@Resource
	@Autowired
	private IUserService userService;

	/**
	 * 用户登录
	 */
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	//检查用户登录
	@RequestMapping("/checkLogin")
	public ModelAndView login(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("username", req.getParameter("username"));
		map.put("password", req.getParameter("password"));
		User user = userService.login(map);
		String code = req.getParameter("code");
		System.out.println(code);
		String word = (String)req.getSession().getAttribute("checkcode_session");
		System.out.println(word);
		if (user != null&&code.equals(word)) {//登录成功进入首页
			//将数据保存在session中
			HttpSession session = req.getSession();
			session.setAttribute("user",user);
			session.setMaxInactiveInterval(1800);
			//req.setAttribute("map", map);
			mv.setViewName("shouye");
		} else {//登录失败回到登录页面
			mv.addObject("message", "密码或验证码输入错误,请重新输入");
			mv.setViewName("login");
		}
		return mv;
	}
	/*
	 * 用户退出
	 * */
	@RequestMapping("/tuichu")
	public String tuichu(HttpServletRequest request,HttpServletResponse response) {
		//将session清空
		HttpSession session =request.getSession();
		session.invalidate();
		return "shouye";
	}	
	/*
	 * 用户注册 
	 * */
	@RequestMapping("/regist")
	public String regist() {
		return "/regist";
	}
	//判断用户注册是否与密码验证码一致
	@RequestMapping("/checkRegist")
	public String checkRegist(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		String code = request.getParameter("code");
		System.out.println(code);
		String word = (String)request.getSession().getAttribute("checkcode_session");
		System.out.println(word);
		List<User> list = userService.findAllName(username);
		if(list.size()>0&&code!=word) {			
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write("验证码错误");
			return "registFail";
			
		}else{
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);		
			userService.addUser(user);		
		}
		return "registSuccess";
	}
	//判断用户名是否已经注册
	@RequestMapping("/checkUsername")
	public void checkUsername(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		PrintWriter pw=response.getWriter();
		 try {
				pw = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		List<User> list = userService.findAllName(username);
		if(list.size()>0||username==null||username=="") {
			pw.print(true);
		}else {
			pw.print(false);
		}
		pw.flush();
		pw.close();
	}
	
	/*
	 * 首页
	 * */
	@RequestMapping("/shouye")
	public String shouye() {
		return "shouye";
	}
	/*
	 * 开心介绍跳转
	 * */
	@RequestMapping("/kxjs")
	public String jianShao() {
		return "KXJS";
	}
	/*
	 * 开心规则跳转
	 * */
	@RequestMapping("/kxgz")
	public String guiZe(){
		return "KXGZ";
	}
	/*
	 * 费用标准
	 * */
	@RequestMapping("/fybz")
	public String feiYong() {
		return "FYBZ";
	}
	/*
	 * 农场介绍
	 * */
	@RequestMapping("/ncjs")
	public String ncjs() {
		return "NCJS";
	}
	/*
	 * 土地租赁
	 * */
	@RequestMapping("/tdzl")
	public String tuDizl() {
		return "redirect:/landList";
	}
	/*
	 * 旅游景点
	 * */
	@RequestMapping("/lyjd")
	public String lvYoujd() {
		return "LYJD";
	}
	/*
	 * 配套设施
	 * */
	@RequestMapping("/ptss")
	public String peiTaoss() {
		return "PTSS";
	}
	/*
	 * 菜地活动
	 * */
	@RequestMapping("/cdhd")
	public String caiDihd() {
		return "CDHD";
	}
	/*
	 * 蔬菜出售
	 * */
	@RequestMapping("/sccs")
	public String shuCaics() {
		return "SCCS";
	}
}
