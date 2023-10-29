package com.TravelMaker.model;

import java.sql.Date;

public class Meeting_BoardDTO {

	private int Meeting_Board_Idx; 
	private Date Meeting_Board_Date;
	private String Meeting_Board_Content;
	private String Meeting_Board_Location;
	private String Meeting_Board_Writer;
	private String Meeting_Board_IsDeleted;
	public int getMeeting_Board_Idx() {
		return Meeting_Board_Idx;
	}
	public void setMeeting_Board_Idx(int meeting_Board_Idx) {
		Meeting_Board_Idx = meeting_Board_Idx;
	}
	public Date getMeeting_Board_Date() {
		return Meeting_Board_Date;
	}
	public void setMeeting_Board_Date(Date meeting_Board_Date) {
		Meeting_Board_Date = meeting_Board_Date;
	}
	public String getMeeting_Board_Content() {
		return Meeting_Board_Content;
	}
	public void setMeeting_Board_Content(String meeting_Board_Content) {
		Meeting_Board_Content = meeting_Board_Content;
	}
	public String getMeeting_Board_Location() {
		return Meeting_Board_Location;
	}
	public void setMeeting_Board_Location(String meeting_Board_Location) {
		Meeting_Board_Location = meeting_Board_Location;
	}
	public String getMeeting_Board_Writer() {
		return Meeting_Board_Writer;
	}
	public void setMeeting_Board_Writer(String meeting_Board_Writer) {
		Meeting_Board_Writer = meeting_Board_Writer;
	}
	public String getMeeting_Board_IsDeleted() {
		return Meeting_Board_IsDeleted;
	}
	public void setMeeting_Board_IsDeleted(String meeting_Board_IsDeleted) {
		Meeting_Board_IsDeleted = meeting_Board_IsDeleted;
	}
}
