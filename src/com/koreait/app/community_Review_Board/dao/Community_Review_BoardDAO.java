package com.koreait.app.community_Review_Board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class Community_Review_BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public Community_Review_BoardDAO() {
		sql_session = sessionf.openSession(true);
	}


	public List<Community_Review_BoardVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);

		return sql_session.selectList("review_Board.getList", pageMap);
	}


	public int getTotal() {
		return sql_session.selectOne("review_Board.getTotal");
	}


	public void insertBoard(Community_Review_BoardVO board) {
		sql_session.insert("review_Board.insertBoard", board);
	}
	

	public int getSeq() {
		return sql_session.selectOne("review_Board.getSeq");
	}


	public Community_Review_BoardVO getDetail(int board_num) {
		return sql_session.selectOne("review_Board.getDetail", board_num);
	}


	public boolean update(Community_Review_BoardVO board) {
		return sql_session.update("review_Board.update", board) == 1;
	}


	public void updateReadCount(int board_num) {
		sql_session.update("review_Board.updateReadCount", board_num);
	}


	public void delete(int board_num) {
		sql_session.delete("review_Board.delete", board_num);
	}
	

	public void updateImg(Community_Review_BoardVO board) {
		sql_session.update("review_Board.updateImg", board);
	}
	

	public void deleteImg(int board_num) {
		sql_session.update("review_Board.deleteImg", board_num);
	}
	
	
	//게시글 수정(정보수정 예제에서 가져옴)
	public boolean updateBoard(Community_Review_BoardVO board) {
		String file = board.getBoard_img_name();
		boolean check = true;
      
		if (file != null) {
			board.setBoard_img_name(file);	
			updateImg(board);
			} else {
				deleteImg(board.getBoard_num());
				}
		if (sql_session.update("review_Board.updateBoard", board) != 1) {
			check = false;
			}
		return check;
		}

	
	
	
	
	
}
