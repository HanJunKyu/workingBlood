package com.koreait.app.community_Review_Board;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.dao.Review_Board_FilesDAO;
import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Community_Review_BoardModifyOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
	      
		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		int fileSize = 5 * 1024 * 1024;
		MultipartRequest multi = null;
		PrintWriter out = resp.getWriter();
		Review_Board_FilesDAO f_dao = new Review_Board_FilesDAO();
		Community_Review_BoardDAO b_dao = new Community_Review_BoardDAO();
		Community_Review_BoardVO b_vo = new Community_Review_BoardVO();
		ActionForward forward = new ActionForward();
		
		try {
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			// 해당 게시글의 번호를 받아온다
			int board_num = Integer.parseInt(multi.getParameter("board_num"));
			//해당 게시글VO를 가져온다.
			Community_Review_BoardVO board = b_dao.getDetail(board_num);
		      
			// 해당 게시글의 수정 전 이미지 파일이름을 가져온다
			String board_img_name = board.getBoard_img_name();
			// 새로 업데이트한 이미지 파일이름을 받아온다
			String new_img = multi.getFilesystemName("board_img_name");
			// 이미지가 없을 경우 iconNoimg.png를 가져온다
			String noImg= multi.getParameter("target_url1");
			
			// 기존이미지와 수정한 이미지가 같다.(수정x)
			if (board_img_name == new_img) {
				b_vo.setBoard_img_name(board_img_name);
				out.print("기존이미지와 수정한 이미지가 같다");
				
				// 기존의 이미지와 지금 이미지가 다르다 → 이미지 수정 or 삭제
				} else if (board_img_name != new_img) {
					//기존이미지 삭제한 후 새로운 이미지로 변경
					if (board_img_name != null) {
						out.print("기존이미지 삭제한 후 새로운 이미지로 변경");
						//이미지 수정
						File f = new java.io.File(saveFolder, board_img_name);
						f.delete();
						b_vo.setBoard_img_name(new_img);
					}else {
						out.print("이미지 삭제");
						//이미지 삭제
						File f = new java.io.File(saveFolder, board_img_name);
						f.delete();
						b_vo.setBoard_img_name(noImg);
					}
				}
			
			//수정된 제목, 내용
			b_vo.setBoard_num(board_num);
			b_vo.setBoard_title(multi.getParameter("board_title"));
			b_vo.setBoard_content(multi.getParameter("board_content"));
			
			f_dao.insertFile(multi, board_num);
			
			
			resp.setContentType("text/html;charset=utf-8");
			// 수정이 실패됐다면 콘솔창에 출력
			if(!b_dao.update(b_vo)){         
				out.println("<script>");
		        out.println("alert('정보 수정 실패. 잠시후 다시 시도해 주세요')");
		        out.println("</script>");
		        out.close();
		        }else {
		        	out.println("완료");
		        	}
			
			forward.setRedirect(false);
			forward.setPath("/community_Review_Board/Review_BoardViewOk.co?board_num="+board_num);
			
			} catch (Exception e) {
				e.printStackTrace();
				}
		return forward;
		}

}
