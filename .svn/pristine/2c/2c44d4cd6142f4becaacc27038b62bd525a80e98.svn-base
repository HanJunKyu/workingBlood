package com.koreait.app.Community_Customer_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;
import com.koreait.app.Community_Customer_Board.vo.BoardReplyVO;

public class CommunityCustomerReplyModifyOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Community_Customer_BoardDAO dao = new Community_Customer_BoardDAO();
		BoardReplyVO reply = new BoardReplyVO();
		int reply_num = Integer.parseInt(req.getParameter("reply_num"));
		String reply_content = req.getParameter("content");
		
		reply.setReply_num(reply_num);
		reply.setReply_content(reply_content);
		
		dao.updateReply(reply);
		
		return null;
	}

}
