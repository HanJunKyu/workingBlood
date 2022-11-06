package com.koreait.app.user;

import java.io.PrintWriter;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.vo.UserVO;

public class FindIdPhoneOk implements Action {
	
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			req.setCharacterEncoding("UTF-8");
			String user_name = req.getParameter("user_name");
			String user_phonenum = req.getParameter("user_phonenum");
			
			ActionForward forward = new ActionForward();
			UserDAO dao = new UserDAO();
			
			System.out.println(dao.findIdPhone(user_name, user_phonenum));
			
			req.setAttribute("userList", dao.findIdPhone(user_name, user_phonenum)); 
			
			forward.setRedirect(false);
			forward.setPath("/find_id_success.jsp");
			return forward;
		}
	
	
	
	
	
	
	
	
	
	

}
