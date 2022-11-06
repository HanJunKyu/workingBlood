package com.koreait.app.user;

import java.io.PrintWriter;
import java.util.Random;
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

public class FindPwPhoneOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		UserVO vo = new UserVO();
		UserDAO dao = new UserDAO();
		String user_id = req.getParameter("user_id");
		String data = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*()_+-=[] {};:/?";
	    String tempPw = "";
	    Random r = new Random();
	       
	    for (int i = 0; i < 10; i++) {
	        tempPw += data.charAt(r.nextInt(data.length()));
	    }
		
		System.out.println("임시비밀번호 : " + tempPw);
		
		
		dao.updatePw(dao.encrypt(tempPw), user_id);
		
		//forward : req객체 유지
		//redirect : req객체 초기화
		
		
		System.out.println(dao.findPw(user_id));
		
		req.setAttribute("user_pw", dao.decrypt(dao.findPw(user_id))); 
		
		forward.setRedirect(false);
		forward.setPath("/find_pw_success.jsp");
		return forward;
	}

}
