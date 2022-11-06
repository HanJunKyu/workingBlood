package com.koreait.app.Community_Customer_Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class CommunityCustomerBoardFrontController extends HttpServlet{
	
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
		
		case "/community_Customer_Board/Customer_BoardWrite.cu":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/community_Customer_Write.jsp");
			break;
			
		case "/community_Customer_Board/Customer_BoardWriteOk.cu":
			try {forward = new CommunityCustomerBoardWriteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_BoardViewOk.cu":
			try {forward = new CommunityCustomerBoardViewOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		
		case "/community_Customer_Board/Customer_BoardModify.cu":
			try {forward = new CommunityCustomerBoardModify().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_BoardModifyOk.cu":
			try {forward = new CommunityCustomerBoardModifyOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_BoardDeleteOk.cu":
			try {forward = new CommunityCustomerBoardDeleteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_ListOk.cu":
			try {forward = new CommunityCustomerListOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_ReplyDeleteOk.cu":
			try {forward = new CommunityCustomerReplyDeleteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_ReplyListOk.cu":
			try {forward = new CommunityCustomerReplyListOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_ReplyModifyOk.cu":
			try {forward = new CommunityCustomerReplyModifyOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
			
		case "/community_Customer_Board/Customer_ReplyWriteOk.cu":
			try {forward = new CommunityCustomerReplyWriteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
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









