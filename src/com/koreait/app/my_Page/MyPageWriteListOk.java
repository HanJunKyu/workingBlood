package com.koreait.app.my_Page;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;

public class MyPageWriteListOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Community_Review_BoardDAO dao = new Community_Review_BoardDAO();
		ActionForward forward = new ActionForward();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 6;
		
		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);
		
		int totalCnt = dao.getTotal();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
	
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("totalCnt_co", totalCnt);
		req.setAttribute("realEndPage_co", realEndPage);
		req.setAttribute("startPage_co", startPage);
		req.setAttribute("endPage_co", endPage);
		req.setAttribute("nowPage_co", page);
		req.setAttribute("boardList_co", dao.getList(startRow, endRow));
		
		forward.setRedirect(false);
		forward.setPath("/my_post.jsp");
		
		return forward;
	}
}
