package com.koreait.app.Community_Customer_Board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;
import com.koreait.app.Community_Customer_Board.vo.BoardReplyVO;


public class CommunityCustomerReplyListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		PrintWriter out = resp.getWriter();
		Community_Customer_BoardDAO dao = new Community_Customer_BoardDAO();
		
		List<BoardReplyVO> replyList = dao.getReplyList(board_num);
				
		JSONArray replies = new JSONArray();
		
		for (BoardReplyVO boardReply : replyList) {
			JSONObject reply = new JSONObject();
			reply.put("reply_num", boardReply.getReply_num());
			reply.put("member_id", boardReply.getMember_id());
			reply.put("reply_content", boardReply.getReply_content());
			replies.add(reply);
		}
		out.println(replies.toJSONString());
		out.close();
		
		return null;
	}
	
}


