package com.koreait.app.Community_Customer_Board;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;

public class CommunityCustomerReplyDeleteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int reply_num = Integer.parseInt(req.getParameter("reply_num"));
		
		Community_Customer_BoardDAO dao = new Community_Customer_BoardDAO();
		dao.deleteReplyToReplyNum(reply_num);
		
		return null;
	}

}
