package com.ssm.entity;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class Land {
	
	private int landID;
	
	private String landName;
	
	private Double landPrice;
	
	private String landImg;
	
	private String landMs;
	
	private String landArea;
	
	private Date   landDate;
	
	private String landSize;
}
