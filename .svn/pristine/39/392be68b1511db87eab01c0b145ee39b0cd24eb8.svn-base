package com.koreait.app.dona;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.dona.dao.DonaTicketDAO;
import com.koreait.app.dona.dao.DonaTicketFilesDAO;
import com.koreait.app.dona.vo.DonaTicketVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DonaTicketWriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		//리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		//req.getServletContext().getRealPath("/") + "\\upload".
		
//		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		String saveFolder = "C:\\gb_0900_kjy\\jsp\\Master\\workingBlood_server\\WebContent\\upload";
		int fileSize = 5 * 1024 * 1024;	//5M
		
		
		ActionForward forward = new ActionForward();
		DonaTicketDAO d_dao = new DonaTicketDAO();
		DonaTicketFilesDAO f_dao = new DonaTicketFilesDAO();
		DonaTicketVO d_vo = new DonaTicketVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		int dona_ticket_num = Integer.parseInt(multi.getParameter("dona_ticket_num"));
		System.out.println(dona_ticket_num);
		
		String user_blood_type = d_dao.getBlood(multi.getParameter("user_id"));
		
		d_vo.setDona_ticket_num(dona_ticket_num);
		d_vo.setUser_blood_type(user_blood_type);
		System.out.println(user_blood_type);
		d_vo.setUser_id(multi.getParameter("user_id"));
		System.out.println(multi.getParameter("user_id"));
		
		d_dao.insertDonaTicket(d_vo);
		f_dao.insertFile(multi, d_dao.getSeq());
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/DonaTicketSuccess.do");
		
		return forward;
	}

}









