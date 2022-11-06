package com.koreait.app.my_Page;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.my_Page.dao.MypageDAO;
import com.koreait.app.user.dao.UserDAO;

public class MyPageDeleteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		ActionForward forward = new ActionForward();
		String user_id = req.getParameter("user_id");
		HttpSession session = req.getSession();
		
		
		MypageDAO dao = new MypageDAO();

		dao.deleteUser(user_id);
		session.invalidate();
			
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/Index.us?code="+2);
		
		
		return forward;
	}

}
