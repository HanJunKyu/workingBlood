package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class UserLogoutAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");

		HttpSession session = req.getSession();
		ActionForward forward = new ActionForward();
		
		session.invalidate();
	
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/Index.us?code="+1);
		
		return forward;
	}

}
