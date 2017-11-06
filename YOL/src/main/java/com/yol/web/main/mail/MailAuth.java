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
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.mail.javamail.JavaMailSender;

import com.yol.web.DTO.MemberDTO;

public class MailAuth {
	

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

	    
	    
	    @Pointcut("execution(public String BoardController.m*(..))")
		public void pc1() {}
		
		//2번 방법 - 직접 지정 (||를 사용해서)
		//@Pointcut("execution(public String BoardController.madd(..))||executio(public String BoardController.mview(..))" )
		//public void pc1() {}
		
		@Before("pc1()")
		public void check(JoinPoint joinPoint) {
			
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
		}
	    
	
}
