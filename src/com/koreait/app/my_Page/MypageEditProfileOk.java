package com.koreait.app.my_Page;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;
import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.koreait.app.community_Review_Board.vo.Review_Board_FilesVO;
import com.koreait.app.my_Page.dao.MypageDAO;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.vo.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MypageEditProfileOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		UserDAO u_dao = new UserDAO();
		UserVO vo = new UserVO();
		MypageDAO dao = new MypageDAO();
		
		ActionForward forward = new ActionForward();
		
		String user_id = req.getParameter("user_id");
		
		vo.setUser_id(user_id);
		vo.setUser_pw(u_dao.encrypt(req.getParameter("user_pw")));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setUser_email(req.getParameter("user_email"));
		vo.setUser_zipcode(req.getParameter("user_zipcode"));
		vo.setUser_address(req.getParameter("user_address"));
		vo.setUser_address_detail(req.getParameter("user_address_detail"));
		vo.setUser_blood_type(req.getParameter("user_blood_type"));
		vo.setUser_phonenum(req.getParameter("user_phonenum"));
		
		dao.updateUser(vo);
			
		forward.setRedirect(false);
		forward.setPath("/mypage_NEW.jsp?code="+1);
			
		return forward;
	}


}
