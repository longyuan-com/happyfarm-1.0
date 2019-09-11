package com.ssm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.google.gson.Gson;
import com.ssm.entity.ReceiverInfo;
import com.ssm.entity.User;

import com.ssm.service.ReceiverService;


@Controller
public class ReceiverController {
	
	@Autowired
	private ReceiverService receiverService;
	/*
	 * 添加收货地址
	 * */
	@RequestMapping("/receiver")
	public String addReceiverInfo(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		ReceiverInfo receiverInfo = new ReceiverInfo();
		String receiver_name =request.getParameter("receiver_name");
		String receiver_phone = request.getParameter("receiver_phone");
		String receiver_address = request.getParameter("receiver_address");
		String receiver_zip = request.getParameter("receiver_zip");
		
		receiverInfo.setUser_id(user.getId());
		receiverInfo.setReceiver_name(receiver_name);
		receiverInfo.setReceiver_phone(receiver_phone);
		receiverInfo.setReceiver_address(receiver_address);
		receiverInfo.setReceiver_zip(receiver_zip);
		
		receiverService.addReceiverInfo(receiverInfo);
		
		return "redirect:/selectReceiver";
	}
	/*
	 * 根据用户ID编号查询收货地址
	 * */
	@RequestMapping("/selectReceiver")
	public String selectReceiver(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		int user_id =user.getId();
		List<ReceiverInfo> receiverInfo =receiverService.selectRInfo(user_id);
		session.setAttribute("receiverInfo", receiverInfo);
		return "JianSuan";
	}
	/*
	 * 点击编辑数据回显
	 * */
	@RequestMapping("/editReceiver")
	public void editReceiver(HttpServletRequest request,HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		ReceiverInfo receiverInfo =receiverService.editRInfo(id);
		//生成JSON：　
		Gson gson =new  Gson();
		String json = gson.toJson(receiverInfo);
		response.setCharacterEncoding("UTF-8");  
		response.setContentType("application/json; charset=utf-8");  
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		writer.append(json);
	}
	/*
	 * 编辑修改后保存地址 
	 * */
	@RequestMapping("/edit")
	public String edit(HttpServletRequest request,HttpServletResponse response) {
		ReceiverInfo receiverInfo = new ReceiverInfo();	
		int id = Integer.parseInt(request.getParameter("receid"));
		String receiver_name =request.getParameter("receiver_name");
		String receiver_phone = request.getParameter("receiver_phone");
		String receiver_address = request.getParameter("receiver_address");
		String receiver_zip = request.getParameter("receiver_zip");
		
		receiverInfo.setId(id);
		receiverInfo.setReceiver_name(receiver_name);
		receiverInfo.setReceiver_phone(receiver_phone);
		receiverInfo.setReceiver_address(receiver_address);
		receiverInfo.setReceiver_zip(receiver_zip);	
		receiverService.editRInfo2(receiverInfo);
		return "redirect:/selectReceiver";
	}
	/*
	 * 根据id删除id
	 * */
	@RequestMapping("/deleteAddress")
	public String deleteAddres(HttpServletRequest request,HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("ID"));
		System.out.println(id);
		receiverService.deleteReceAddress(id);
		return "redirect:/selectReceiver";
	}
	/*
	 * 设为默认地址
	 * */
	@RequestMapping("/moren")
	public String moRen(HttpServletRequest request,HttpServletResponse response) {
		//获取默认地址id
		int id = Integer.parseInt(request.getParameter("ID"));
		List<ReceiverInfo> morenRece = receiverService.selectReceByID(id);
		//System.out.println(morenRece.getReceiver_name());
		HttpSession session = request.getSession();
		session.setAttribute("morenRece", morenRece);
		return "JianSuan";
	}
	
}
