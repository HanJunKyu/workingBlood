package com.koreait.app.dona;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.dona.dao.DonaTicketDAO;
import com.koreait.app.dona.dao.DonaTicketFilesDAO;
import com.koreait.app.dona.dao.DonaTicketReqDAO;
import com.koreait.app.dona.dao.DonaTicketReqFilesDAO;
import com.koreait.app.dona.vo.DonaTicketReqVO;
import com.koreait.app.dona.vo.DonaTicketVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DonaTicketReqWriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		//리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		//req.getServletContext().getRealPath("/") + "\\upload"
//		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		String saveFolder = "C:\\gb_0900_kjy\\jsp\\Master\\workingBlood_server\\WebContent\\upload";
		int fileSize = 5 * 1024 * 1024;	//5M
		
		
		ActionForward forward = new ActionForward();
		DonaTicketReqDAO d_dao = new DonaTicketReqDAO();
		DonaTicketReqFilesDAO f_dao = new DonaTicketReqFilesDAO();
		DonaTicketReqVO d_vo = new DonaTicketReqVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String user_id = multi.getParameter("user_id");
		String req_applicant = multi.getParameter("req_applicant");
		int req_blood_ticket_cnt = Integer.parseInt(multi.getParameter("req_blood_ticket_cnt"));
		String req_application_reason = multi.getParameter("req_application_reason");
		String req_hospital_name = multi.getParameter("req_hospital_name");
		String req_blood_first_date = multi.getParameter("req_blood_first_date");
		String req_blood_last_date =multi.getParameter("req_blood_last_date");
		int req_blood_amount = Integer.parseInt(multi.getParameter("req_blood_amount")); 
		String req_blood_reason = multi.getParameter("req_blood_reason");
		
	
		d_vo.setUser_id(user_id);
		d_vo.setReq_applicant(req_applicant);
		d_vo.setReq_blood_ticket_cnt(req_blood_ticket_cnt);
		d_vo.setReq_application_reason(req_application_reason);
		d_vo.setReq_hospital_name(req_hospital_name);
		d_vo.setReq_blood_first_date(req_blood_first_date);
		d_vo.setReq_blood_last_date(req_blood_last_date);
		d_vo.setReq_blood_amount(req_blood_amount);
		d_vo.setReq_blood_reason(req_blood_reason);
		
		d_dao.insertDonaTicket(d_vo);
		f_dao.insertFile(multi, d_dao.getSeq());
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/DonaTicketSuccess.do");
//		forward.setPath(req.getContextPath() + "/DonaTicketReqWriteOk.do");
		
		
		return forward;
	}

}









