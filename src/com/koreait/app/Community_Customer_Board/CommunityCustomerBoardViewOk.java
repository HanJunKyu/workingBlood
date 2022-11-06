package com.koreait.app.Community_Customer_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;

public class CommunityCustomerBoardViewOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		Community_Customer_BoardDAO b_dao = new Community_Customer_BoardDAO();
		ActionForward forward = new ActionForward();
		
		req.setAttribute("board", b_dao.getDetail(board_num));
				
		
		forward.setRedirect(false);	
		forward.setPath("/community_Customer_View.jsp");	
		
		return forward;
	}

}
