package com.yol.web.main.mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.yol.web.DTO.MemberDTO;

@Aspect
@Component
public class MailAuth {
	

	  @Autowired
	    private JavaMailSender mailSender;
	    
	    @Autowired
	    private LogDAO dao;
	 
	    @Pointcut("execution(public String com.yol.web.main.mail.LogController.signok())")
		public void signAuth() {}
		
		//2번 방법 - 직접 지정 (||를 사용해서)
		//@Pointcut("execution(public String BoardController.madd(..))||executio(public String BoardController.mview(..))" )
		//public void pc1() {}
	    
	    @After("signAuth()")
	    public void signUp(JoinPoint joinPoint) throws MessagingException, UnsupportedEncodingException {
	       
	    	Object[] args = joinPoint.getArgs();
			MemberDTO dto = (MemberDTO)args[1];
	    	
	    	String key = new TempKey().getKey(50, false);
	        MailHandler sendMail = new MailHandler(mailSender);
	        sendMail.setSubject("[이메일 인증]");
	        sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
	                //.append("<a href='http://211.63.89.36:8080/spring/emailConfirm?key=")
	        		.append("<a href='http://localhost:8081/spring/emailConfirm?key=")
	                .append(key)
	                .append("' target='_blank'>이메일 인증 확인</a>")
	                .toString());
	        sendMail.setFrom("보낸이메일", "이름");
	        sendMail.setTo(dto.getmEmail());
	        sendMail.send();
	    }

	    
	    
	    //인증 메일은 가입이 완벽하게 이뤄진담에 되야하니까. 완료성공 페이지 하나 만들고 거기다 걸기
	    
	    
	   
	/*
		public void sendAuthMail(JoinPoint joinPoint) {
			
			//System.out.println("보조업무호출");
			
			Object[] args = joinPoint.getArgs();
			HttpServletRequest req = (HttpServletRequest)args[0];
			HttpServletResponse resp = (HttpServletResponse)args[2];

			HttpSession session = (HttpSession)args[1];
			
			if(session.getAttribute("id")==null || session.getAttribute("id")=="") {
				
				try {
					resp.setCharacterEncoding("UTF-8");

					PrintWriter writer = resp.getWriter();
					writer.println("<html>");
					writer.println("<body>");
					writer.println("인증 없으");
					writer.println("<script>");
					writer.println("alert('111');");
					writer.println("location.href='aop.board/list.action';");
					writer.println("</scirpt>");
					writer.println("</body>");
					writer.println("</html>");
					writer.close();
					
					
				} catch (IOException e) {

					e.printStackTrace();
				}
			}
		}*/
	    
	
}
