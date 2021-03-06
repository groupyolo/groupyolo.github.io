package com.yol.web.main.log;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.LoginDTO;
import com.yol.web.DTO.MemberDTO;

@Repository
public class LogDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public MemberDTO logIn(MemberDTO dto) {

		return sql.selectOne("log.in", dto);
	}

	public int sign(MemberDTO dto) {

		return sql.insert("log.sign",dto);
	}

	public int addStateMember(MemberDTO dto) {

		return sql.insert("log.addStateMember",dto);
	}

	public String getId(String mEmail) {
		
		return sql.selectOne("log.getId",mEmail);
	}

	public int authok(MemberDTO dto) {
		
		return sql.insert("log.authok",dto);
	}

	public int apiLoginCheck(MemberDTO ldto) {

		return sql.selectOne("log.apiLoginCheck",ldto);
	}

	public MemberDTO apiLoginok(MemberDTO dto) {
		return sql.selectOne("log.apiLoginok",dto);
	}

	public int apiSign(MemberDTO dto) {
		return sql.insert("log.apiSign",dto);
	}

	public void addapiStateMember(MemberDTO dto) {
		sql.insert("log.addapiStateMember",dto);
	}

	public void apiAuthok(MemberDTO dto) {
		
		sql.insert("log.apiAuthok",dto);
	}

	public int mEmailCheck(String mEmail) {
		
		return sql.selectOne("log.mEmailCheck",mEmail);
	}

	public int mNickNameCheck(String mNickName) {
		return sql.selectOne("log.mNickNameCheck",mNickName);
	}

	public int findPassword(String mEmail) {
		return sql.selectOne("log.findPassword",mEmail);
	}

	public int findPasswordChange(MemberDTO dto) {
		return sql.update("log.findPasswordChange",dto);
	}

	public void addLogin(HashMap<String, String> map) {
		sql.insert("log.addLogin",map);
		
	}

	public int editProfile(MemberDTO dto) {
		return sql.update("log.editProfile",dto);
	}

	public MemberDTO getNewSession(MemberDTO ldto) {
		return sql.selectOne("log.getNewSession", ldto);
	}
	
}
