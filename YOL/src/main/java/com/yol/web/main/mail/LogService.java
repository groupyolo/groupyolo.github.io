package com.yol.web.main.mail;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.MemberDTO;

@Service
public class LogService implements ILogService{
	
	@Autowired
	private LogDAO dao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public MemberDTO logIn(MemberDTO dto) {
		
		return dao.logIn(dto);
	}
	
	@Transactional
	@Override
	public void sign(MemberDTO dto) {
		int result1 = dao.sign(dto);
		int result2 = dao.addStateMember(dto);
		
		if(result1==1&&result2==1) {
			
			System.out.println("메일 보내기");
	    	
			String mEmail = dto.getmEmail();
	    	String mSeq = dto.getmSeq();
			
	        try {
	        	MailHandler sendMail = new MailHandler(mailSender);
	        	sendMail.setSubject("[이메일 인증]");
				sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				        //.append("<a href='http://211.63.89.36:8080/web/emailConfirm?key=")
						.append("<a href='http://localhost:8081/web/main/authok.action?mEmail=")
						.append(mEmail)
						.append("&mSignal=54d5c5ddkjckjckadk")
				        .append("' target='_blank'>이메일 인증 확인</a>")
				        .toString());
				sendMail.setFrom("finalprojectjung@gmail.com", "기무하");
				sendMail.setTo(mEmail);
				sendMail.send();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	@Override
	public int authok(MemberDTO dto) {
		
		return dao.authok(dto);
	}
	
	@Override
	public int apiLoginCheck(MemberDTO dto) {
		return dao.apiLoginCheck(dto);
	}
	
	@Override
	public MemberDTO apiLoginok(MemberDTO dto) {
		return dao.apiLoginok(dto);
	}
	
	@Override
	public int apiSign(MemberDTO dto) {
		return dao.apiSign(dto);
	}
	
	@Override
	public int mEmailCheck(String mEmail) {
		return dao.mEmailCheck(mEmail);
	}
	
	@Override
	public int mNickNameCheck(String mNickName) {
		return dao.mNickNameCheck(mNickName);
	}

	@Override
	public int findPassword(String mEmail) {
		
		int result = dao.findPassword(mEmail);
		
		if(result==1) {
			System.out.println("비번 찾기");
			
	        try {
	        	MailHandler sendMail = new MailHandler(mailSender);
	        	sendMail.setSubject("[비밀번호 변경]");
				sendMail.setText(new StringBuffer().append("<h1>비밀번호 변경</h1>")
				        //.append("<a href='http://211.63.89.36:8080/web/emailConfirm?key=")
						.append("<a href='http://localhost:8081/web/main/findPasswordChange.action?mEmail=")
						.append(mEmail)
				        .append("' target='_blank'>비밀번호 재설정</a>")
				        .toString());
				sendMail.setFrom("finalprojectjung@gmail.com", "기무하");
				sendMail.setTo(mEmail);
				sendMail.send();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public int findPasswordChange(MemberDTO dto) {
		return dao.findPasswordChange(dto);
	}
	
	
	
	
	
}
