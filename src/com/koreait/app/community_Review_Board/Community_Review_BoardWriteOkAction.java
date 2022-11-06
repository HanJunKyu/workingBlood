package com.koreait.app.community_Review_Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;
import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Community_Review_BoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		int fileSize = 5 * 1024 * 1024; // 5M

		Community_Review_BoardDAO b_dao = new Community_Review_BoardDAO();
		Review_Board_FilesDAO f_dao = new Review_Board_FilesDAO();
		Community_Review_BoardVO b_vo = new Community_Review_BoardVO();
		ActionForward forward = new ActionForward();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String board_img= multi.getFilesystemName("board_img_name");
		//사용자가 대표사진을 추가했을 경우 & 안했을 경우
		if(board_img == null) {
			//iconNoimg.png 사진 가져오기
			b_vo.setBoard_img_name(multi.getParameter("target_url1"));
		}else {
			b_vo.setBoard_img_name(board_img);			
		}

		b_vo.setBoard_title(multi.getParameter("board_title"));
		b_vo.setBoard_content(multi.getParameter("board_content"));
		b_vo.setBoard_id(multi.getParameter("board_id"));
		
		

		b_dao.insertBoard(b_vo);
		f_dao.insertFile(multi, b_dao.getSeq());

		forward.setRedirect(true); // redirect 방식
		forward.setPath(req.getContextPath() + "/community_Review_Board/Review_BoardList.co"); 

		return forward;
	}

}
