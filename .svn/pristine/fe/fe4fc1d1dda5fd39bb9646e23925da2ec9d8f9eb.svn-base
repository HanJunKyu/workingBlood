package com.koreait.app.Community_Customer_BoardDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.Community_Customer_BoardVO.BoardReplyVO;
import com.koreait.app.Community_Customer_BoardVO.Community_Customer_BoardVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class Community_Customer_BoardDAO {
   SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
   SqlSession sql_session;

   public Community_Customer_BoardDAO() {
      sql_session = sessionf.openSession(true);
   }
   
   //댓글 수정
 	public void updateReply(BoardReplyVO reply) {
 		sql_session.update("customer_Board.updateReply", reply);
 	}
 	
 	//게시글 번호로 댓글 삭제
 	public void deleteReplyToBoardNum(int board_num) {
 		sql_session.delete("customer_Board.deleteReplyToBoardNum", board_num);
 	}
 	
 	//댓글 번호로 댓글 삭제
 	public void deleteReplyToReplyNum(int reply_num) {
 		sql_session.delete("customer_Board.deleteReplyToReplyNum", reply_num);
 	}
 	
 	//댓글 추가
 	public void insertReply(BoardReplyVO reply) {
 		sql_session.insert("customer_Board.insertReply", reply);
 	}
 	
 	//댓글 목록
 	public List<BoardReplyVO> getReplyList(int board_num){
 		return sql_session.selectList("customer_Board.getReplyList", board_num);
 	}

   // 게시글 추가
   public void insertBoard(Community_Customer_BoardVO board) {
      sql_session.insert("customer_Board.insertBoard", board);
   }
   
   // 게시글 번호 가져오기(SEQ)
   public int getSeq() {
      return sql_session.selectOne("customer_Board.getSeq");
   }

   // 게시글 상세보기(게시글 한 개 가져오기)
   public Community_Customer_BoardVO getDetail(int board_num) {
      return sql_session.selectOne("customer_Board.getDetail", board_num);
   }

   // 게시글 수정
   public void update(Community_Customer_BoardVO board) {
      sql_session.update("customer_Board.update", board);
   }
 
   // 게시글 삭제
   public void delete(int board_num) {
      sql_session.delete("customer_Board.delete", board_num);
   }
   
   //페이지별 게시글 목록
 	public List<Community_Customer_BoardVO> getList(int startRow, int endRow) {
 		Map<String, Integer> pageMap = new HashMap<>();
 		
 		pageMap.put("startRow", startRow);
 		pageMap.put("endRow", endRow);
 		
 		return sql_session.selectList("customer_Board.getList", pageMap);
 	}
 	
 	public int getTotal() {
 		return sql_session.selectOne("customer_Board.getTotal");
 	}
}