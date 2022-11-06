package com.koreait.app.dona.vo;

public class DonaTicketVO {
	private int dona_num;
	private int dona_ticket_num;
	private String user_id;
	private String user_blood_type;
	private String dona_date;
	
	public DonaTicketVO() {;}

	public int getDona_num() {
		return dona_num;
	}

	public void setDona_num(int dona_num) {
		this.dona_num = dona_num;
	}

	public int getDona_ticket_num() {
		return dona_ticket_num;
	}

	public void setDona_ticket_num(int dona_ticket_num) {
		this.dona_ticket_num = dona_ticket_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_blood_type() {
		return user_blood_type;
	}

	public void setUser_blood_type(String user_blood_type) {
		this.user_blood_type = user_blood_type;
	}

	public String getDona_date() {
		return dona_date;
	}

	public void setDona_date(String dona_date) {
		this.dona_date = dona_date;
	}

	
}
