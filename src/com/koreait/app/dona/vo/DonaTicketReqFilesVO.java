package com.koreait.app.dona.vo;

public class DonaTicketReqFilesVO {
	private String file_name;
	private int req_num;
	private String file_name_original;
	
	public DonaTicketReqFilesVO() {;}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public int getReq_num() {
		return req_num;
	}

	public void setReq_num(int dona_num) {
		this.req_num = dona_num;
	}

	public String getFile_name_original() {
		return file_name_original;
	}

	public void setFile_name_original(String file_name_original) {
		this.file_name_original = file_name_original;
	}


}
