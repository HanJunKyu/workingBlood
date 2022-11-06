package com.koreait.app.my_Page;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.Community_Review_BoardListOkAction;
import com.koreait.app.community_Review_Board.Community_Review_BoardViewOkAction;
import com.koreait.app.community_Review_Board.Community_Review_BoardWriteOkAction;
import com.koreait.app.community_Review_Board.Review_FileDownload;

public class MyPageFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		if(command.equals("/myPage/MyPageDeleteOk.my")) {
		
			try {forward = new MyPageDeleteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/myPage/MyPageCheckPwOk.my")) {
		
			try {forward = new MyPageCheckPwOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/myPage/MyPageWriteListOk.my")) {
		
			try {forward = new MyPageWriteListOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/myPage/MyPageEditProfile.my")) {
		
			try {forward = new MyPageEditProfile().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/myPage/MyPageEditProfileOk.my")) {
		
			try {forward = new MypageEditProfileOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/myPage/MyPageDelete.my")) {
		      
	         forward = new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("/withdrawal_check.jsp");
	         
        }else if(command.equals("/myPage/MyPage.my")) {
		      
	         forward = new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("/mypage_NEW.jsp");
		         
		}else if(command.equals("/myPage/MyPageEditProfile.my")) {
			      
	         forward = new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("/edit_profile.jsp");
			         
		}else if(command.equals("/myPage/MyPageEditProfileCheck.my")) {
		      
	         forward = new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("/edit_profile_check.jsp");
			         
		}
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
	
}
