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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserReviewOk implements Action{
   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	   req.setCharacterEncoding("UTF-8");
	   resp.setCharacterEncoding("UTF-8");
	   
	    UserDAO dao = new UserDAO();
	   PrintWriter out = resp.getWriter();
	  
	   List<Community_Review_BoardVO> boardList = dao.getList();
	   
	   JSONArray lists = new JSONArray();
      
	   for (Community_Review_BoardVO boardvo : boardList) {
			JSONObject list = new JSONObject();
			list.put("board_num", boardvo.getBoard_num());
			list.put("board_title", boardvo.getBoard_title());
			list.put("board_content", boardvo.getBoard_content());
			list.put("board_image", boardvo.getBoard_img_name());
			list.put("a", dao.getBloodCntA());
			list.put("b", dao.getBloodCntB());
			list.put("ab", dao.getBloodCntAB());
			list.put("o", dao.getBloodCntO());
			lists.add(list);
		}
      
      out.println(lists.toJSONString());
      out.close();
      
      return null;
   }
}

