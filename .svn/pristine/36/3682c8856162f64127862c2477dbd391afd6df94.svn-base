package com.koreait.app.my_Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.vo.UserVO;

public class MyPageEditProfile implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		String user_id = req.getParameter("user_id");
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		
		if(user_id != null) {
			UserVO vo = dao.getDetail(user_id);
			
			req.setAttribute("user_id", vo.getUser_id());
			req.setAttribute("user_name", vo.getUser_name());

			forward.setRedirect(false);
			forward.setPath("/edit_profile.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath("/login.jsp");
		}
		return forward;
}
}
