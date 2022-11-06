package com.koreait.app.user.vo;
/*USER_ID VARCHAR2(1000),
USER_PW VARCHAR2(1000),
USER_NAME VARCHAR2(1000),
USER_EMAIL VARCHAR2(1000),
USER_ZIPCODE VARCHAR2(100),
USER_ADDRESS VARCHAR2(1000),
USER_ADDRESS_DETAIL VARCHAR2(1000),
USER_BLOOD_TYPE VARCHAR2(20),
USER_PHONENUM VARCHAR2(1000),
*/
public class UserVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private String user_zipcode;
	private String user_address;
	private String user_address_detail;
	private String user_blood_type;
	private String user_phonenum;
	
	public UserVO() {;}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_zipcode() {
		return user_zipcode;
	}

	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_address_detail() {
		return user_address_detail;
	}

	public void setUser_address_detail(String user_address_detail) {
		this.user_address_detail = user_address_detail;
	}

	public String getUser_blood_type() {
		return user_blood_type;
	}

	public void setUser_blood_type(String user_blood_type) {
		this.user_blood_type = user_blood_type;
	}

	public String getUser_phonenum() {
		return user_phonenum;
	}

	public void setUser_phonenum(String user_phonenum) {
		this.user_phonenum = user_phonenum;
	}

	@Override
	public String toString() {
		String str = "user_id : " + user_id + "\n"
				+ "user_pw : " + user_pw + "\n"
				+ "user_name : " + user_name + "\n"
				+ "user_email : " + user_email + "\n"
				+ "user_zipcode : " + user_zipcode + "\n"
				+ "user_address : " + user_address + "\n"
				+ "user_address_detail : " + user_address_detail + "\n"
				+ "user_phonenum : " + user_phonenum ; 
		return str;
	}
}
