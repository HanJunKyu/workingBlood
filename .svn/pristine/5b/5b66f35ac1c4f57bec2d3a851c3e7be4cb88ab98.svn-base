package com.koreait.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.Community_Review_BoardListOkAction;

public class UserFrontController extends HttpServlet{
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
   
      if(command.equals("/user/UserCheckIdOk.us")) {
         
         try {new  UserCheckIdOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/IndexBoard.us")) {
      
         try {new  UserReviewOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/IndexBlood.us")) {
          
          try {new  UserBloodCntOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
       
       }else if(command.equals("/user/UserCheckPwOk.us")) {
      
         try {new  UserCheckPwOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/UserJoinOk.us")) {
      
         try {forward = new UserJoinOk().execute(req, resp);   } catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/UserLoginOk.us")) {
      
         try {forward = new UserLoginOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
         
      }else if(command.equals("/user/UserLogout.us")) {
   
         try {forward = new UserLogoutAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/SendSMS.us")) {

         try {forward = new SendSMS().execute(req, resp);} catch (Exception e) {e.printStackTrace();}
      
      }else if(command.equals("/user/FindIdPhoneSuccess.us")) {
   
         try {forward = new FindIdPhoneOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/FindPwSuccess.us")) {
   
         try {forward = new FindPwPhoneOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
      
      }else if(command.equals("/user/UserLogin.us")) {
      
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/login.jsp");
         
      }else if(command.equals("/user/Userjoinsuccess.us")) {
      
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/join_success.jsp");
         
      }else if(command.equals("/user/Index.us")) {
         
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/index.jsp");
         
      }else if(command.equals("/user/UserJoin.us")) {
         
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/join.jsp");
         
      }else if(command.equals("/user/Find_id_phone.us")) {
         
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/find_id_phone.jsp");
      
      }else if(command.equals("/user/Find_id_email.us")) {
      
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/find_id_email.jsp");
      
      }else if(command.equals("/user/Find_pw_phone.us")) {
         
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/find_pw_phone.jsp");
      
      }else if(command.equals("/user/Find_pw_email.us")) {
      
         forward = new ActionForward();
         forward.setRedirect(false);
         forward.setPath("/find_pw_email.jsp");
      
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








