package com.koreait.app.user.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONObject;

import com.koreait.app.community_Review_Board.dao.Community_Review_BoardDAO;
import com.koreait.app.community_Review_Board.vo.Community_Review_BoardVO;
import com.koreait.app.user.vo.UserVO;
import com.koreait.mybatis.config.SqlMapConfig;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserDAO {
	private static final int KEY = 3;
	
   SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
   SqlSession sql_session;
   
   public UserDAO() {
      sql_session = sessionf.openSession(true);
   }
   

	//회원정보 가져오기
	public UserVO getDetail(String user_id) {
		return sql_session.selectOne("User.getDetail", user_id);
	}
	
//   로그인
   public boolean login(String id, String pw) {
      HashMap<String, String> map = new HashMap<>();
      map.put("user_id", id);
      map.put("user_pw", pw);
      return (Integer)sql_session.selectOne("User.login", map) == 1;
   }
   
// 회원가입
   public void join(UserVO user) {
      sql_session.insert("User.join", user);
   }
   
//   아이디 중복검사
   public boolean checkId(String user_id) {
      return (Integer)sql_session.selectOne("User.checkId", user_id) == 1;
   }
   
//   아이디 찾기(휴대폰번호)
   public List<String> findIdPhone(String user_name, String user_phonenum) {
      HashMap<String, String> map = new HashMap<>();
      map.put("user_name", user_name);
      map.put("user_phonenum", user_phonenum);
      
      return sql_session.selectList("User.findIdPhone", map);
   }

   //   아이디 찾기(이메일)
   public List<String> findIdEmail(String user_name, String user_email) {
	   HashMap<String, String> map = new HashMap<>();
	   map.put("user_name", user_name);
	   map.put("user_email", user_email);
	   
	   return sql_session.selectList("User.findIdEmail", map);
   }
   
//   비밀번호 찾기
   public String findPw(String user_id) {
      return sql_session.selectOne("User.findPw", user_id);
   }

   // 혈액형 가져오기
   public String getBlood(String user_id) {
	   return sql_session.selectOne("User.getBlood", user_id);
   }

   // 혈액형별 기부 신청한 총 갯수 가져오기
   public int getBloodCntA() {
	   return sql_session.selectOne("User.getBloodCntA");
   }
   public int getBloodCntB() {
	   return sql_session.selectOne("User.getBloodCntB");
   }
   public int getBloodCntAB() {
	   return sql_session.selectOne("User.getBloodCntAB");
   }
   public int getBloodCntO() {
	   return sql_session.selectOne("User.getBloodCntO");
   }

   //   임시비밀번호로 수정
   public void updatePw(String user_pw, String user_id) {
      HashMap<String, String> map = new HashMap<>();
      map.put("user_pw", user_pw);
      map.put("user_id", user_id);
      sql_session.update("User.updatePw", map);
   }
   //감동후기 게시글 최근 3개 가져오기
   public List<Community_Review_BoardVO> getList() {
      return sql_session.selectList("User.getList");
   }
   
// 암호화
	public String encrypt(String pw) {

		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char) (pw.charAt(i) * KEY);
		}

		return en_pw;
	}

	// 복호화
	public String decrypt(String en_pw) {

		String de_pw = "";
		for (int i = 0; i < en_pw.length(); i++) {
			de_pw += (char) (en_pw.charAt(i) / KEY);
		}

		return de_pw;
	}

	// 인증번호 보내기
	public void certifiedPhoneNumber(String phoneNumber, String cerNum) {

		String api_key = "NCSLAJAMF2Z1X6N5";
		String api_secret = "V84UAUQLFIRDBPYUTZWVQUO2PFAPOQJC";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber); // 수신전화번호
		params.put("from", "01051206883"); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "[인증번호:" + cerNum + "]" + " 일하는 혈액들 인증번호 입니다.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

	}
	
   
}
