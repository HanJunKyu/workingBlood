package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.vo.UserVO;
import com.koreait.app.user.dao.UserDAO;

public class UserJoinOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		ActionForward forward = new ActionForward();
		
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pw(dao.encrypt(req.getParameter("user_pw")));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setUser_email(req.getParameter("user_email"));
		vo.setUser_zipcode(req.getParameter("user_zipcode"));
		vo.setUser_address(req.getParameter("user_address"));
		vo.setUser_address_detail(req.getParameter("user_address_detail"));
		vo.setUser_blood_type(req.getParameter("user_blood_type"));
		vo.setUser_phonenum(req.getParameter("user_phonenum"));
		
		dao.join(vo);
		//forward : req객체 유지
		//redirect : req객체 초기화
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/join_success.jsp");
		
		return forward;
	}
}





