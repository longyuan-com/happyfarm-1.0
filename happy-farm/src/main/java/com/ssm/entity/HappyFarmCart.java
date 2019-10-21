package com.ssm.entity;

public class HappyFarmCart {
    private Integer id;

    private Integer userid;

    private Integer productid;

    private Integer number;

    private Double price;

    private HappyFarmLandinfo happyFarmLandinfo;
    
    public HappyFarmLandinfo getHappyFarmLandinfo() {
		return happyFarmLandinfo;
	}

	public void setHappyFarmLandinfo(HappyFarmLandinfo happyFarmLandinfo) {
		this.happyFarmLandinfo = happyFarmLandinfo;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @Override
	public String toString() {
		return "HappyFarmCart [id=" + id + ", userid=" + userid + ", productid=" + productid + ", number=" + number
				+ ", price=" + price + "]";
	}

	public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}