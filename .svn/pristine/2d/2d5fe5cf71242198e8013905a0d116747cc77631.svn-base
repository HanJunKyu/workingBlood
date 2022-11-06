package com.koreait.app.my_Page.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.user.vo.UserVO;
import com.koreait.mybatis.config.SqlMapConfig;
public class MypageDAO {
	
   SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
   SqlSession sql_session;
 
   public MypageDAO() {
      sql_session = sessionf.openSession(true);
   }
   
   //회원 비밀번호 중복검사
   public boolean checkPw(String user_id, String user_pw) {
	   HashMap<String, String> map = new HashMap<>();
	   map.put("user_id", user_id);
	   map.put("user_pw", user_pw);
	   
	   return (Integer)sql_session.selectOne("Auth.checkPw", map) == 1;
   }
   
   //회원탈퇴
   public void deleteUser(String user_id) {
	  sql_session.delete("Auth.deleteUser", user_id);
   }
   //내 정보 수정
   public void updateUser(UserVO user) {
	   sql_session.update("Auth.updateUser", user);
   }
}
