package com.ssm.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class getOrderIdByTime {
	
	public static String getOrderIdByTime(int id){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String newDate=sdf.format(new Date());
		return newDate+id;
	}
}
	
