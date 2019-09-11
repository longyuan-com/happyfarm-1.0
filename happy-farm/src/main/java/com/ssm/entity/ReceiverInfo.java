package com.ssm.entity;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class ReceiverInfo {
	
	private int id;
	
	private int user_id;
	
	private String receiver_name;
	
	private String receiver_phone;
	
	private String receiver_address;
	
	private String receiver_zip;
}
