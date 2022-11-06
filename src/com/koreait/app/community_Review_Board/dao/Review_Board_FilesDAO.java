package com.koreait.app.community_Review_Board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.koreait.app.community_Review_Board.vo.Review_Board_FilesVO;
import com.koreait.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class Review_Board_FilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public Review_Board_FilesDAO() {
		sql_session = sessionf.openSession(true);
	}

	public void delete(int board_num) {
		sql_session.delete("review_files.delete", board_num);
	}


	public List<Review_Board_FilesVO> getFiles(int board_num) {
		return sql_session.selectList("review_files.getFiles", board_num);
	}

	
	public void insertFile(MultipartRequest multi, int board_num) {
		Enumeration<String> files = multi.getFileNames();
		Review_Board_FilesVO vo = new Review_Board_FilesVO();
		Community_Review_BoardVO b_vo = new Community_Review_BoardVO();
		while (files.hasMoreElements()) {
			//files에 있는 객체를 하나씩 가져옴
			String name = files.nextElement();
			//원본 파일 이름
			String original = multi.getOriginalFileName(name);
			//시스템 파일이름
			String systemName = multi.getFilesystemName(name);
			if (systemName == null) {
				continue;
			} 

			// fileVO에 추가한다.
			vo.setFile_name(systemName);
			vo.setBoard_num(board_num);
			vo.setFile_name_original(original);

			sql_session.insert("review_files.insertFile", vo);
		}
	}
	
	
	
	
	
	
}
