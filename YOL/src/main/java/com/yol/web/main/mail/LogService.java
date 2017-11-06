package com.yol.web.main.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.MemberDTO;

@Service
public class LogService implements ILogService{
	
	@Autowired
	private LogDAO logDAO;
	
	@Override
	public MemberDTO logIn(MemberDTO dto) {
		
		return logDAO.logIn(dto);
	}
	
	@Override
	public int sign(MemberDTO dto) {
		int result1 = logDAO.sign(dto);
		
		if(result1==1) {
			int result2 = logDAO.addStateMember();
		}
		
		return 0;
	}
	
	
	
	
	
	
}
