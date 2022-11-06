package com.koreait.app.dona;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.FindIdPhoneOk;
import com.koreait.app.user.FindPwPhoneOk;
import com.koreait.app.user.SendSMS;
import com.koreait.app.user.UserCheckIdOk;
import com.koreait.app.user.UserCheckPwOk;
import com.koreait.app.user.UserJoinOk;
import com.koreait.app.user.UserLoginOk;
import com.koreait.app.user.UserLogoutAction;
import com.koreait.app.user.UserReviewOk;

public class DonaTicketFrontController extends HttpServlet {

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
	
		
		//기부 신청 했을 때
		if(command.equals("/dona/DonaTicketWriteOk.do")) {
         
         try {new DonaTicketWriteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
         forward = new ActionForward();
         forward.setRedirect(true);
         forward.setPath(req.getContextPath() + "/success.jsp");//값 넘기는거랑 페이징 처리 한꺼번에 함..
      }else if(command.equals("/dona/DonaTicketReqWriteOk.do")) {
          
          try {new DonaTicketReqWriteOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
          forward = new ActionForward();
          forward.setRedirect(true);
          forward.setPath(req.getContextPath() + "/success_req.jsp");//값 넘기는거랑 페이징 처리 한꺼번에 함..
      
      }else if(command.equals("/dona/DonaTicketSuccess.do")) {
          forward = new ActionForward();
          forward.setRedirect(true);
          forward.setPath(req.getContextPath() + "/success.jsp");
       }else {
          forward = new ActionForward();
          forward.setRedirect(false);
          forward.setPath("/404.jsp");
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
