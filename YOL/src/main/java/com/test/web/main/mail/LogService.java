package com.test.web.main.mail;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.springframework.mail.javamail.JavaMailSender;

import com.yol.web.DTO.MemberDTO;

public class LogService {
	
	
	  @Inject
	    private JavaMailSender mailSender;
	    
	    @Inject
	 //   private SignUpDao signUpDao;
	 
	  //  @Override
	    public void signUp(MemberDTO memberDTO) throws MessagingException, UnsupportedEncodingException {
	   //     signUpDao.insertUser(userVo);
	        String key = new TempKey().getKey(50, false);
	  //      signUpDao.insertEmailConfirm(userVo.getId(), key);
	        MailHandler sendMail = new MailHandler(mailSender);
	        sendMail.setSubject("[이메일 인증]");
	        sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
	                .append("<a href='http://localhost:8080/spring/emailConfirm?key=")
	                .append(key)
	                .append("' target='_blenk'>이메일 인증 확인</a>")
	                .toString());
	        sendMail.setFrom("보낸이메일", "이름");
	       // sendMail.setTo(logDAO.getEmail());
	        sendMail.send();
	    }


	
}
