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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.google.gson.Gson;

import com.ssm.entity.Land;
import com.ssm.service.LandService;




@Controller
public class LandController {
	@Autowired
	private LandService landService;
	/*
	 * 增加土地
	 * */
	@RequestMapping("/addLand")
	public String addImg(HttpServletRequest request, Land land,
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
		land.setLandImg("upload/" + name + "." + ext);
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
		System.out.println(landID+"、"+landName+"、"+landPrice+"、"+landMs+"、"+landArea+"、"+landRq);
		land.setLandID(landID);
		land.setLandName(landName);
		land.setLandPrice(landPrice);
		land.setLandMs(landMs);
		land.setLandArea(landArea);
		land.setLandDate(landRq);
		land.setLandSize(landSize);
		landService.addLand(land);
		// 重定向到查询所有用户的Controller，测试图片回显
		return "redirect:/landList";
	} 
	
	/*土地租赁页面公共展示所有土地*/
	@RequestMapping(value ="/landList")
	public String landList(HttpServletRequest request,HttpServletResponse response ,Model model) throws Exception {
		//将信息保存在session中，以供全局访问
		List<Land> landList= landService.selectLand();
		HttpSession session = request.getSession();
		session.setAttribute("landList", landList);
		//model.addAttribute("landList", landList);
		return "TDZL";
	}
	/*
	 * 点击图片或昵称实现单个土地获取
	 * */
	@RequestMapping("/tdhq")
	public String tuDihq(HttpServletRequest request,HttpServletResponse response) {
		int landID= Integer.parseInt(request.getParameter("landID"));
		System.out.println(landID);
		List<Land> land=landService.getByLandId(landID);
		HttpSession session = request.getSession();
		session.setAttribute("land", land);
		//request.setAttribute("land", land);
		return "TDZL-2";
	}
	/*
	 * 编辑土地，在编辑页面根据土地ID获取之前的数据
	 * */
	@RequestMapping("/bjtd")
	public String bianJitd(HttpServletRequest request, HttpServletResponse response){
		int landID= Integer.parseInt(request.getParameter("landID"));
		System.out.println(landID);
		Land land2 = new Land();
		land2=landService.getByLandId2(landID);
		request.setAttribute("land2", land2);
		return "updateLand";
	}
	/*
	 * 编辑土地,返回到happy-farm-2页面
	 * */
	@RequestMapping("/tudibji")
	public String bianJitd(HttpServletRequest request, Land land,
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
		land.setLandImg("upload/" + name + "." + ext);
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
		land.setLandID(landID);
		land.setLandName(landName);
		land.setLandPrice(landPrice);
		land.setLandMs(landMs);
		land.setLandArea(landArea);
		land.setLandDate(landRq);
		land.setLandSize(landSize);
		landService.updateLand(land);
		// 重定向到查询所有用户的Controller，测试图片回显
		return "happy-farm-2";
	} 
	/*
	 * 后台管理删除土地
	 * */
	@RequestMapping("/deleteLand")
	public String deleteLand(HttpServletRequest request,HttpServletResponse response) {
		int landID= Integer.parseInt(request.getParameter("landID"));
		System.out.println(landID);
		landService.deletLand(landID);
		return "redirect:/landList";
	}
	/*
	 * 土地租赁页面地图位置获取
	 * */
	@RequestMapping("/dituweizhi")
	public void diTuAddress(HttpServletRequest request, HttpServletResponse response) {
		int id=Integer.parseInt(request.getParameter("id"));
		Land land =landService.getByLandId2(id);
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
	/*
	 * 测试获取数据库土地条数
	 * */
	@RequestMapping("/getPage")
	public void getPage() {
		int count=landService.getCount();
		System.out.println(count);
	}	 
}
