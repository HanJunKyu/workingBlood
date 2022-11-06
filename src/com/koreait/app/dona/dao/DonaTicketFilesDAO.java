package com.koreait.app.dona.dao;

import java.util.Enumeration;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.koreait.app.dona.vo.DonaTicketFilesVO;
import com.koreait.app.dona.vo.DonaTicketVO;
import com.koreait.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class DonaTicketFilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public DonaTicketFilesDAO() {
		sql_session = sessionf.openSession(true);
	}
	//게시글에 있는 첨부파일 모두 삭제
		public void delete(int dona_num) {
			sql_session.delete("Files.delete", dona_num);
		}
		
		//특정 게시글의 첨부파일 목록
		public List<DonaTicketFilesVO> getFiles(int dona_num) {
			return sql_session.selectList("Files.getFiles", dona_num);
		}
		
		public void insertFile(MultipartRequest multi, int dona_num) {
			Enumeration<String> files = multi.getFileNames();
			DonaTicketFilesVO vo = new DonaTicketFilesVO();
			while(files.hasMoreElements()) {
				//사용자가 업로드한 파일태그의 name
				String name = files.nextElement();
				//사용자가 업로드한 원본 파일 이름
				String original = multi.getOriginalFileName(name);
				//중복 시 변경된 이름
				String systemName = multi.getFilesystemName(name);
				if(systemName == null) {continue;}
				
				vo.setFile_name(systemName);
				vo.setDona_num(dona_num);
				vo.setFile_name_original(original);
				
				sql_session.insert("Files.insertFile", vo);
			}
		}
	
}
