package com.ssm.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;
import java.util.UUID;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.ssm.entity.HappyFarmLandinfo;
import com.ssm.service.LandinfoService;


@Controller
public class LandController {
	
	@Autowired
	private LandinfoService landinfoService;

	/*
	 *添加土地的页面
	 * */
	@RequestMapping("/addLandpage")
	public String addLand() {
		
		return "admin/addLand";
	}
	//添加土地的方法
	@RequestMapping("/addLand")
	public String addImg(HttpServletRequest request, HappyFarmLandinfo land,
			@RequestParam(value="file")MultipartFile pictureFile) throws Exception {
		//这个RequestParam(value="file")的是我们在jsp的name=“file”
		// 使用UUID给图片重命名，并去掉四个“-”
		String name = UUID.randomUUID().toString().replaceAll("-", "");
		// 获取文件的扩展名
		String ext = FilenameUtils.getExtension(pictureFile
				.getOriginalFilename());
		// 设置图片上传路径
		String url = request.getSession().getServletContext()
				.getRealPath("/upload");
		System.out.println(url);
		// 以绝对路径保存重名命后的图片
		pictureFile.transferTo(new File(url + "/" + name + "." + ext));
		// 把图片存储路径保存到数据库
		land.setLandimg("upload/" + name + "." + ext);
		String landName = request.getParameter("landName");
		double landPrice = Double.parseDouble(request.getParameter("landPrice"));
		String landMs = request.getParameter("landMs");
		String landArea = request.getParameter("landArea");
		String landSize = request.getParameter("landSize");
		Date landRq = null;
		// String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			landRq = simpleDateFormat.parse(request.getParameter("landRq"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("、"+landName+"、"+landPrice+"、"+landMs+"、"+landArea+"、"+landRq+"、");
		land.setLandname(landName);
		land.setLandprice(landPrice);
		land.setLandms(landMs);
		land.setLandarea(landArea);
		land.setLanddate(landRq);
		land.setLandsize(landSize+"平方米");
		land.setStatus(0);
		landinfoService.addHappyFarmLandinfo(land);
		// 重定向到查询所有用户的Controller，测试图片回显
		return "redirect:/landList";
	} 

	/*
	 * 跳转到土地数据的列表
	 * */	
	@RequestMapping("/farm-2")
	public ModelAndView farm2(ModelAndView model) {
		List<HappyFarmLandinfo> list=landinfoService.selectHappyFarmLandinfo();
		model.addObject("landList", list);
		model.setViewName("admin/happy-farm-2");
		return model;
	}
	

	/*
	 * 跳转到编辑土地页面
	 * */
	@RequestMapping("/updateLandpage")
	public String updateLand(HttpServletRequest request) {
		
		int landid= Integer.parseInt(request.getParameter("landid"));
		HappyFarmLandinfo land2 = new HappyFarmLandinfo();
		land2=landinfoService.getByHappyFarmLandinfoId(landid);
		request.setAttribute("land2", land2);
		
		return "admin/updateLand";
	}
	
	/*土地租赁页面公共展示所有土地*/
	@RequestMapping(value ="/landList")
	public String landList(HttpServletRequest request,HttpServletResponse response ,Model model) throws Exception {
		//将信息保存在session中，以供全局访问
		List<HappyFarmLandinfo> landList= landinfoService.selectHappyFarmLandinfo();
		HttpSession session = request.getSession();
		session.setAttribute("landList", landList);
		return "admin/happy-farm-2";
	}
	/*
	 * 点击图片或昵称实现单个土地获取
	 * */
	@RequestMapping("/landinfo")
	public ModelAndView landinfo(HttpServletRequest request,HttpServletResponse response) {
		int landID= Integer.parseInt(request.getParameter("landID"));
		System.out.println(landID);
		HappyFarmLandinfo land=landinfoService.getByHappyFarmLandinfoId(landID);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("land", land);
		modelAndView.setViewName("buyer/landlease-2");
		return modelAndView;
	}
	
	@RequestMapping("/updateLand")
	public String bianJitd(HttpServletRequest request, HappyFarmLandinfo land,
			@RequestParam(value="file") MultipartFile pictureFile) throws Exception {
		//这个RequestParam(value="file")的是我们在jsp的name=“file”
		// 使用UUID给图片重命名，并去掉四个“-”
		String name = UUID.randomUUID().toString().replaceAll("-", "");
		// 获取文件的扩展名
		String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());
		// 设置图片上传路径
		String url = request.getSession().getServletContext()
				.getRealPath("/upload");
		System.out.println(url);
		// 以绝对路径保存重名命后的图片
		pictureFile.transferTo(new File(url + "/" + name + "." + ext));
		// 把图片存储路径保存到数据库
		land.setLandimg("upload/" + name + "." + ext);
		//从页面表单获取输入的数据
		int landID = Integer.parseInt(request.getParameter("landID"));
		String landName = request.getParameter("landName");
		double landPrice = Double.parseDouble(request.getParameter("landPrice"));
		String landMs = request.getParameter("landMs");
		String landArea = request.getParameter("landArea");
		String landSize = request.getParameter("landSize");
		Date landRq = null;
		// String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			landRq = simpleDateFormat.parse(request.getParameter("landRq"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println(landID+"、"+landName+"、"+landPrice+"、"+landMs+"、"+landSize);
		land.setLandid(landID);
		land.setLandname(landName);
		land.setLandprice(landPrice);
		land.setLandms(landMs);
		land.setLandarea(landArea);
		land.setLanddate(landRq);
		land.setLandsize(landSize);
		landinfoService.updateHappyFarmLandinfo(land);
		// 重定向到查询所有用户的Controller，测试图片回显
		return "happy-farm-2";
	} 
	/*
	 * 后台管理删除土地
	 * */
	@RequestMapping("/deleteLand")
	public String deleteLand(HttpServletRequest request,HttpServletResponse response) {
		int landid= Integer.parseInt(request.getParameter("landid"));
		landinfoService.deletHappyFarmLandinfo(landid);
		return "redirect:/landList";
	}
	/*
	 * 土地租赁页面地图位置获取
	 * */
	@RequestMapping("/dituweizhi")
	public void diTuAddress(HttpServletRequest request, HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		HappyFarmLandinfo land =landinfoService.getByHappyFarmLandinfoId(id);
		//生成json
		Gson gson =new Gson();
		String json = gson.toJson(land);
		response.setCharacterEncoding("UTF-8");  
		response.setContentType("application/json; charset=utf-8");  
		PrintWriter writer=null;
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		writer.append(json);
	}
 
	
	@RequestMapping(value="/updatestatus",method =RequestMethod.POST)
	@ResponseBody
	public int updatestatus(@RequestParam("landid") Integer landId,@RequestParam("status") Integer status) {
	
		return landinfoService.updateStstus(landId, status);
	}

	
	@RequestMapping(value="user/landlease",method =RequestMethod.GET)
	public ModelAndView landlease() {
		List<HappyFarmLandinfo> landList= landinfoService.selectInfoStatus();
		ModelAndView  mv=new ModelAndView();
		mv.addObject("landList", landList);
		mv.setViewName("buyer/landlease");
		return mv;
	}
	
}
