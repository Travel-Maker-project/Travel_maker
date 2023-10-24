package com.travelmaker.model.recommend_travel;

import java.sql.Date;

//	RECOMMEND_TRAVEL_IDX               NUMBER        
//	RECOMMEND_TRAVEL_ADDRESS           VARCHAR2(500) 
//	RECOMMEND_TRAVEL_EVENTSTARTDATE    DATE          
//	RECOMMEND_TRAVEL_EVENTENDDATE      DATE          
//	RECOMMEND_TRAVEL_IMG               VARCHAR2(500) 
//	RECOMMEND_TRAVEL_MAPX              NUMBER(38,14) 
//	RECOMMEND_TRAVEL_MAPY              NUMBER(38,14) 
//	RECOMMEND_TRAVEL_MAPLEVEL          NUMBER        
//	RECOMMEND_TRAVEL_TEL               VARCHAR2(500) 
//	RECOMMEND_TRAVEL_TITLE             VARCHAR2(500) 

public class Recommend_TravelDTO {

	private int recommend_travel_idx;
	private String recommend_travel_address;
	private Date recommend_travel_eventstartdate;
	private Date recommend_travel_eventenddate;
	private String recommend_travel_img;
	private int recommend_travel_mapx;
	private int recommend_travel_mapy;
	private int recommend_travel_maplevel;
	private String recommend_travel_tel;
	private String recommend_travel_title;
	
	public int getRecommend_travel_idx() {
		return recommend_travel_idx;
	}
	public void setRecommend_travel_idx(int recommend_travel_idx) {
		this.recommend_travel_idx = recommend_travel_idx;
	}
	public String getRecommend_travel_address() {
		return recommend_travel_address;
	}
	public void setRecommend_travel_address(String recommend_travel_address) {
		this.recommend_travel_address = recommend_travel_address;
	}
	public Date getRecommend_travel_eventstartdate() {
		return recommend_travel_eventstartdate;
	}
	public void setRecommend_travel_eventstartdate(Date recommend_travel_eventstartdate) {
		this.recommend_travel_eventstartdate = recommend_travel_eventstartdate;
	}
	public Date getRecommend_travel_eventenddate() {
		return recommend_travel_eventenddate;
	}
	public void setRecommend_travel_eventenddate(Date recommend_travel_eventenddate) {
		this.recommend_travel_eventenddate = recommend_travel_eventenddate;
	}
	public String getRecommend_travel_img() {
		return recommend_travel_img;
	}
	public void setRecommend_travel_img(String recommend_travel_img) {
		this.recommend_travel_img = recommend_travel_img;
	}
	public int getRecommend_travel_mapx() {
		return recommend_travel_mapx;
	}
	public void setRecommend_travel_mapx(int recommend_travel_mapx) {
		this.recommend_travel_mapx = recommend_travel_mapx;
	}
	public int getRecommend_travel_mapy() {
		return recommend_travel_mapy;
	}
	public void setRecommend_travel_mapy(int recommend_travel_mapy) {
		this.recommend_travel_mapy = recommend_travel_mapy;
	}
	public int getRecommend_travel_maplevel() {
		return recommend_travel_maplevel;
	}
	public void setRecommend_travel_maplevel(int recommend_travel_maplevel) {
		this.recommend_travel_maplevel = recommend_travel_maplevel;
	}
	public String getRecommend_travel_tel() {
		return recommend_travel_tel;
	}
	public void setRecommend_travel_tel(String recommend_travel_tel) {
		this.recommend_travel_tel = recommend_travel_tel;
	}
	public String getRecommend_travel_title() {
		return recommend_travel_title;
	}
	public void setRecommend_travel_title(String recommend_travel_title) {
		this.recommend_travel_title = recommend_travel_title;
	}
}
