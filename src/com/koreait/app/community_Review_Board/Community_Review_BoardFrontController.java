package com.koreait.app.community_Review_Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class Community_Review_BoardFrontController extends HttpServlet{
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
		
		switch(command) {
		case "/community_Review_Board/Review_BoardList.co":
			try {forward = new Community_Review_BoardListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_BoardWrite.co":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/community_Review_Write.jsp");
			break;
		case "/community_Review_Board/Review_BoardWriteOk.co":
			try {forward = new Community_Review_BoardWriteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_BoardViewOk.co":
			try {forward = new Community_Review_BoardViewOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_FileDownload.co":
			try {forward = new Review_FileDownload().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_BoardModify.co":
			try {forward = new Community_Review_BoardModify().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_BoardModifyOk.co":
			try {forward = new Community_Review_BoardModifyOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		case "/community_Review_Board/Review_BoardDeleteOk.co":
			try {forward = new Community_Review_BoardDeleteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
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









