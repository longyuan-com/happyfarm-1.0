package com.ssm.entity;

public class OrderforSeller {
    private Integer id;

    private String orderid;

    private Integer deliverystatus;

    private Integer logisticsid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public Integer getDeliverystatus() {
        return deliverystatus;
    }

    public void setDeliverystatus(Integer deliverystatus) {
        this.deliverystatus = deliverystatus;
    }

    public Integer getLogisticsid() {
        return logisticsid;
    }

    public void setLogisticsid(Integer logisticsid) {
        this.logisticsid = logisticsid;
    }
}