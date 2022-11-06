package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;

public class UserCheckIdOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("user_id");
		UserDAO dao = new UserDAO();
		PrintWriter out = resp.getWriter();
		
		JSONObject obj = new JSONObject();

		if(dao.checkId(id) || id.length() < 5) {
//			out.println("non-ok");
			obj.put("status", "not-ok");
		}else {
//			out.println("ok");
			obj.put("status", "ok");
		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}
