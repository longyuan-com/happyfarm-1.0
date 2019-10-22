package com.ssm.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class getOrderIdByTime {
	
	public String getOrderIdByTime(Integer productId){
		int a=productId;
		SimpleDateFormat sdf=new SimpleDateFormat("yyMMddHHmmss");
		String newDate=sdf.format(new Date());
		String result=newDate+a;
		return result;
	}
}
	
