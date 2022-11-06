package com.koreait.app.user;

import java.io.PrintWriter;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;

public class UserCheckPwOk implements Action {
	public static boolean verifyPassword(String pw) {
		//소문자, 0~9 숫자, 특수문자 8자리 이상!
//		String passwordPolicy = "((?=.*[a-z])(?=.*[0-9])(?=.*[^a-zA-Z0-9]).{8,})";
		//영어 대소문자가 한개이상 들어가 있는가 ?  숫자가 한개이상 들어가 있는가 ?? 특수문자가 한개이상 들어가 있는가 ? 
		//영어부터 숫자 특수문자를 입력 받을것이고,  8개 이상 10개 이하 의숫자를 받아야 한다
		String passwordPolicy = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}";
		Pattern pattern_pwd = Pattern.compile(passwordPolicy);
		Matcher matcher_pwd = pattern_pwd.matcher(pw);
		
		return matcher_pwd.matches();
	}
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String user_pw = req.getParameter("user_pw");
		PrintWriter out = resp.getWriter();
		
		JSONObject obj = new JSONObject();

		if(verifyPassword(user_pw)) {
			//out.println("ok");
			obj.put("status", "ok");
		}else {
			//out.println("non-ok");
			obj.put("status", "not-ok");
		}
		
		
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}
