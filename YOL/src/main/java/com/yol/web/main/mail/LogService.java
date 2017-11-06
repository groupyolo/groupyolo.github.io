package com.yol.web.main.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.MemberDTO;

@Service
public class LogService implements ILogService{
	
	@Autowired
	private LogDAO dao;
	
	@Override
	public MemberDTO logIn(MemberDTO dto) {
		
		return dao.logIn(dto);
	}
	
	@Override
	public int sign(MemberDTO dto) {

		return dao.sign(dto);
	}
	
	@Override
	public int addStateMember(String mEmail) {

		return dao.addStateMember(mEmail);
	}
	
	@Override
	public int authok(MemberDTO dto) {
		
		return dao.authok(dto);
	}
	
	
	
}
