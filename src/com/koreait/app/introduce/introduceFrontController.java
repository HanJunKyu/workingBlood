package com.koreait.app.introduce;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class introduceFrontController extends HttpServlet{
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
		case "/introduce/what_is_WorkingBlood.in":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/what_is_WorkingBlood.jsp");
			break;
		case "/introduce/bloodCenterFind.in":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/bloodCenterFind.jsp");
			break;
		case "/introduce/directions.in":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/directions.jsp");
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









