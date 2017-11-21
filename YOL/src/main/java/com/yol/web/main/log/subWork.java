package com.yol.web.main.log;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yol.web.DTO.LoginDTO;
import com.yol.web.DTO.MemberDTO;

@Aspect
@Component
public class subWork {
	
	@Autowired 
	private LogDAO dao;

	    @Pointcut("execution(public String com.yol.web.member.creation.MemberController.myinfo(..))")
		public void login() {}

/*	    @Pointcut("execution(public String com.yol.web.main.mail.LogController.apiSignok(..))")
	    public void apiAuth() {}
*/
		
	   /* @After("apiAuth()")
	    @Transactional
	    public void addapiStateMember(JoinPoint joinPoint) {
	    	Object[] args = joinPoint.getArgs();
	    	MemberDTO dto = (MemberDTO)args[1];
	    	dao.addapiStateMember(dto);
	    	dao.apiAuthok(dto);
	    }*/

	   /* @Before("auth()")
	    public void addStateMember(JoinPoint joinPoint) {
	    	Object[] args = joinPoint.getArgs();
	    	String mEmail = (String)args[1];
	    	//dao.addStateMember(mEmail);
	    }*/
	    
	   /* @After("auth()")
	    public void sendMail(JoinPoint joinPoint) throws MessagingException, UnsupportedEncodingException {
	       
	    	System.out.println("메일 보내기");
	    	Object[] args = joinPoint.getArgs();
			String mEmail = (String)args[1];
	    	String mSeq = dao.getId(mEmail);
			
	        MailHandler sendMail = new MailHandler(mailSender);
	        sendMail.setSubject("[이메일 인증]");
	        sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
	                //.append("<a href='http://211.63.89.36:8080/web/emailConfirm?key=")
	        		.append("<a href='http://localhost:8081/web/main/authok.action?mEmail=")
	        		.append(mEmail)
	        		.append("&mSeq=")
	                .append(mSeq)
	                .append("' target='_blank'>이메일 인증 확인</a>")
	                .toString());
	        sendMail.setFrom("finalprojectjung@gmail.com", "기무하");
	        sendMail.setTo(mEmail);
	        sendMail.send();
	    }*/
	    
	    @Before("login()")
	    public void getIP(JoinPoint joinPoint) {
	    	
	    	Object[] args = joinPoint.getArgs();
			HttpServletRequest req = (HttpServletRequest)args[0];
			HttpSession session = (HttpSession)args[1];
	    	//세션도 가져오기
			// DTO에 넣어서 넘기기
	        String ip = req.getHeader("X-FORWARDED-FOR");
	        if(ip == null) ip = req.getRemoteAddr();
	        
	        
	        MemberDTO dto = (MemberDTO)session.getAttribute("loginDTO");
	        HashMap<String,String> map = new HashMap<String, String>();
	        map.put("mSeq", dto.getmSeq());
	        map.put("lCheckIP", ip);
	    	dao.addLogin(map);
	    }
	   	
}
