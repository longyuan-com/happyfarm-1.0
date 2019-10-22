package com.ssm.entity;

public class landCart {
	
	private HappyFarmUser happyFarmUser;
	
	private HappyFarmSeller happyFarmSeller;
	
	private OrderforBuyer orderforBuyer;
	
	private OrderforSeller orderforSeller;
	
	private HappyFarmLandinfo happyFarmLandinfo;
	
	private Logistics  logistics;
	
	private Address   address;

	public HappyFarmUser getHappyFarmUser() {
		return happyFarmUser;
	}

	public void setHappyFarmUser(HappyFarmUser happyFarmUser) {
		this.happyFarmUser = happyFarmUser;
	}

	public OrderforBuyer getOrderforBuyer() {
		return orderforBuyer;
	}

	public void setOrderforBuyer(OrderforBuyer orderforBuyer) {
		this.orderforBuyer = orderforBuyer;
	}

	public OrderforSeller getOrderforSeller() {
		return orderforSeller;
	}

	public void setOrderforSeller(OrderforSeller orderforSeller) {
		this.orderforSeller = orderforSeller;
	}

	public HappyFarmLandinfo getHappyFarmLandinfo() {
		return happyFarmLandinfo;
	}

	public void setHappyFarmLandinfo(HappyFarmLandinfo happyFarmLandinfo) {
		this.happyFarmLandinfo = happyFarmLandinfo;
	}

	public Logistics getLogistics() {
		return logistics;
	}

	public void setLogistics(Logistics logistics) {
		this.logistics = logistics;
	}


	@Override
	public String toString() {
		return "landCart [happyFarmUser=" + happyFarmUser + ", happyFarmSeller=" + happyFarmSeller + ", orderforBuyer="
				+ orderforBuyer + ", orderforSeller=" + orderforSeller + ", happyFarmLandinfo=" + happyFarmLandinfo
				+ ", logistics=" + logistics + ", address=" + address + "]";
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public HappyFarmSeller getHappyFarmSeller() {
		return happyFarmSeller;
	}

	public void setHappyFarmSeller(HappyFarmSeller happyFarmSeller) {
		this.happyFarmSeller = happyFarmSeller;
	}
	

}
