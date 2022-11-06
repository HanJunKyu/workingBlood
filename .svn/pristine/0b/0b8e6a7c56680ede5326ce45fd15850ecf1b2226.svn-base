package com.koreait.app.user;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.koreait.app.user.dao.UserDAO;

public class UserBloodCntOk implements Action{
   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	   req.setCharacterEncoding("UTF-8");
	   resp.setCharacterEncoding("UTF-8");
	   
	   UserDAO dao = new UserDAO();
	   PrintWriter out = resp.getWriter();
	  
	   
	   
	   JSONArray lists = new JSONArray();
      
	   	JSONObject list = new JSONObject();
			list.put("a", dao.getBloodCntA());
			list.put("b", dao.getBloodCntB());
			list.put("ab", dao.getBloodCntAB());
			list.put("o", dao.getBloodCntO());
			lists.add(list);
			System.out.println(dao.getBloodCntA());
			System.out.println(dao.getBloodCntB());
			System.out.println(dao.getBloodCntAB());
			System.out.println(dao.getBloodCntO());
      System.out.println(lists);
      out.println(lists.toJSONString());
      out.close();
      
      return null;
   }
}