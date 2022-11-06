package com.koreait.app.my_Page;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.my_Page.dao.MypageDAO;
import com.koreait.app.user.dao.UserDAO;

public class MyPageCheckPwOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		MypageDAO dao = new MypageDAO();
		UserDAO u_dao = new UserDAO();
		PrintWriter out = resp.getWriter();
		
		JSONObject obj = new JSONObject();

		if(dao.checkPw(id, u_dao.encrypt(pw))) {
			obj.put("status", "ok");
		}else {
			obj.put("status", "not-ok");
		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}
