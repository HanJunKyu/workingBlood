package com.koreait.app.community_Review_Board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;
import com.koreait.app.community_Review_Board.vo.Review_Board_FilesVO;

public class Community_Review_BoardDeleteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		Review_Board_FilesDAO f_dao = new Review_Board_FilesDAO();
		Community_Review_BoardDAO b_dao = new Community_Review_BoardDAO();
		ActionForward forward = new ActionForward();
		try {
			//글 상세보기에서 해당 게시글의 번호를 받아온다.
			int board_num = Integer.parseInt(req.getParameter("board_num"));
			
			//for문을 돌려 해당 게시글에 있는 파일vo를 하나씩 가져온다.
			for(Review_Board_FilesVO file : f_dao.getFiles(board_num)) {
				//해당 게시글에 있는 파일 이름이 저장폴더에 있을 경우 삭제한다.
				File f = new File(saveFolder, file.getFile_name());
				if(f.exists()) { 
					f.delete(); 
				}
			}
			
			//DB에서 해당 게시글번호의 정보를 모두 삭제한다
			f_dao.delete(board_num);
			b_dao.delete(board_num);
			
			forward.setRedirect(false);
			forward.setPath("/community_Review_Board/Review_BoardList.co");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}
