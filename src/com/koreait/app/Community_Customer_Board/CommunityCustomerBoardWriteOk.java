package com.koreait.app.Community_Customer_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.Community_Customer_Board.dao.Community_Customer_BoardDAO;
import com.koreait.app.Community_Customer_Board.vo.Community_Customer_BoardVO;

public class CommunityCustomerBoardWriteOk implements Action {
	

	   @Override
	   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

	     
	      Community_Customer_BoardDAO b_dao = new Community_Customer_BoardDAO();
	      Community_Customer_BoardVO b_vo = new Community_Customer_BoardVO();
	      ActionForward forward = new ActionForward();
	   
	      // 게시글
	      b_vo.setBoard_title(req.getParameter("board_title"));
	      b_vo.setBoard_content(req.getParameter("board_content"));
	      b_vo.setBoard_id(req.getParameter("board_id"));

	      // 사용자가 작성한 게시글을 게시판DB에 추가
	      b_dao.insertBoard(b_vo);
	     
	      forward.setRedirect(true); // redirect 방식
	      forward.setPath(req.getContextPath() + "/community_Customer_View.jsp"); // 작성완료 시 게시판목록으로 가기

	      return forward;
	   }
	
}
