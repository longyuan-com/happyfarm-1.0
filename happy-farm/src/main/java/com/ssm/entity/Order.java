package com.ssm.entity;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class Order {
	
	private String username;
	
	private String orderID;
	
	private String goodsName;
	
	private double goodsPrice;
	
	private int goodsNum;
	
	private String receiverName;
	
	private String  receiverPhone;

	private String receiverAddress;
	
}
