package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;

public class UserLoginOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		UserDAO dao = new UserDAO();
		
		String id = req.getParameter("user_id");
		String pw = dao.encrypt(req.getParameter("user_pw"));
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		forward.setRedirect(true);
		
		if(dao.login(id, pw)) {
			session.setAttribute("session_id", id);
			forward.setPath(req.getContextPath() + "/user/Index.us");
		}else {
			forward.setPath(req.getContextPath() + "/user/UserLogin.us?code=" + 1);
		}
		
		return forward;
	}
}












