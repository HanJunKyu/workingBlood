package com.koreait.app.dona.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.dona.vo.DonaTicketReqVO;
import com.koreait.app.dona.vo.DonaTicketVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class DonaTicketReqDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public DonaTicketReqDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//헌혈증 기부 신청 추가
	public void insertDonaTicket(DonaTicketReqVO vo) {
		sql_session.insert("DonaReq.insertDona", vo);
	}
	
	//헌혈증 기부 글 번호 가져오기(SEQ)
	public int getSeq() {
		return sql_session.selectOne("DonaReq.getSeq");
	}
	//혈액형 가져오기
	public String getBlood(String id) {
		return sql_session.selectOne("User.getBlood", id);
	}
}
