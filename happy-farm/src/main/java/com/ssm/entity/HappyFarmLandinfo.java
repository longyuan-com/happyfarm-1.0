package com.ssm.entity;

import java.util.Date;

public class HappyFarmLandinfo {
    private Integer landid;

    private String landname;

    private Double landprice;

    private String landimg;

    private String landms;

    private String landarea;

    private Date landdate;

    private String landsize;

    private Integer status;

    public Integer getLandid() {
        return landid;
    }

    public void setLandid(Integer landid) {
        this.landid = landid;
    }

    public String getLandname() {
        return landname;
    }

    public void setLandname(String landname) {
        this.landname = landname == null ? null : landname.trim();
    }

    public Double getLandprice() {
        return landprice;
    }

    public void setLandprice(Double landprice) {
        this.landprice = landprice;
    }

    public String getLandimg() {
        return landimg;
    }

    public void setLandimg(String landimg) {
        this.landimg = landimg == null ? null : landimg.trim();
    }

    public String getLandms() {
        return landms;
    }

    public void setLandms(String landms) {
        this.landms = landms == null ? null : landms.trim();
    }

    public String getLandarea() {
        return landarea;
    }

    public void setLandarea(String landarea) {
        this.landarea = landarea == null ? null : landarea.trim();
    }

    public Date getLanddate() {
        return landdate;
    }

    public void setLanddate(Date landdate) {
        this.landdate = landdate;
    }

    public String getLandsize() {
        return landsize;
    }

    public void setLandsize(String landsize) {
        this.landsize = landsize == null ? null : landsize.trim();
    }

    public Integer getStatus() {
        return status;
    }

    @Override
	public String toString() {
		return "HappyFarmLandinfo [landid=" + landid + ", landname=" + landname + ", landprice=" + landprice
				+ ", landimg=" + landimg + ", landms=" + landms + ", landarea=" + landarea + ", landdate=" + landdate
				+ ", landsize=" + landsize + ", status=" + status + "]";
	}

	public void setStatus(Integer status) {
        this.status = status;
    }
}