package com.koreait.app.community_Review_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;

public class Community_Review_BoardModify implements Action {
	
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			int board_num = Integer.parseInt(req.getParameter("board_num"));
			ActionForward forward = new ActionForward();
			
			Community_Review_BoardDAO dao = new Community_Review_BoardDAO();
			Review_Board_FilesDAO f_dao = new Review_Board_FilesDAO();

			req.setAttribute("board", dao.getDetail(board_num));
			req.setAttribute("files", f_dao.getFiles(board_num));
			forward.setRedirect(false);
			forward.setPath("/community_Review_Modify.jsp");
			
			return forward;
	}

}
