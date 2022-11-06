package com.koreait.app.Community_Customer_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;
import com.koreait.app.Community_Customer_Board.vo.BoardReplyVO;

public class CommunityCustomerReplyWriteOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		String member_id = (String)req.getSession().getAttribute("session_id");
		String content = req.getParameter("content");
		
		BoardReplyVO reply = new BoardReplyVO();
		Community_Customer_BoardDAO dao = new Community_Customer_BoardDAO();
		
		reply.setBoard_num(board_num);
		reply.setMember_id(member_id);
		reply.setReply_content(content);
		
		dao.insertReply(reply);
		
		return null;
	}
}
