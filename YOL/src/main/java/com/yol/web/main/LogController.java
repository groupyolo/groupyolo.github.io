package com.yol.web.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.MemberDTO;

@Controller
public class LogController {
	
	@Autowired
	private ILogService service	;
	
 
	  @RequestMapping(method= {RequestMethod.GET},value="/main/signAuth.action" )
	  public String signAuth(HttpServletRequest req, String mEmail) {
		 //인증 메일 보내기
		  
		  return "main.log.login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/authok.action" )
	  public String authok(HttpServletRequest req, MemberDTO dto) {
		  //메일에서 인증하기 
		  
		  int result = service.authok(dto);
		  
		  return "main.log.authok";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/sign.action" )
	  public String sign(HttpServletRequest req) {
		  //등록
		  return "main.log.sign";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/signok.action" )
	  public String signok(HttpServletRequest req, MemberDTO dto) {
		  
		  service.sign(dto);
		 
		  req.setAttribute("loginDTO", dto);	
		  
		  return "main.log.signok";
		  
	  }

	  @RequestMapping(method= {RequestMethod.GET},value="/main/login.action" )
	  public String login(HttpServletRequest req) {
		  
		  
		  return "main.log.login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/loginok.action" )
	  public String loginok(HttpServletRequest req,MemberDTO ldto,HttpSession session) {
		  MemberDTO dto = service.logIn(ldto);
		  /*session=req.getSession();*/
		  session.setAttribute("loginDTO", dto);
		  
		  return "main.log.loginok";
		  
	  }

	  @RequestMapping(method= {RequestMethod.GET},value="/main/mEmailCheck.action" )
	  public String mEmailCheck(HttpServletRequest req,String mEmail) {
		  int result = service.mEmailCheck(mEmail);
		  req.setAttribute("result", result);
		  return "main.log.mEmailCheck.ajax";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/mNickNameCheck.action" )
	  public String mNickNameCheck(HttpServletRequest req,String mNickName) {
		  int result = service.mNickNameCheck(mNickName);
		  
		  req.setAttribute("result", result);
		  return "main.log.mNickNameCheck.ajax";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiLoginCheck.action" )
	  public String apiLoginCheck(HttpServletRequest req,MemberDTO dto) {
		  int result = service.apiLoginCheck(dto);
		  req.setAttribute("result",result);
		  return "main.log.apiLoginCheck.ajax";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/apiSign.action" )
	  public String apiSign(HttpServletRequest req,MemberDTO dto) {
		  
		  req.setAttribute("dto",dto);
		  
		  return "main.log.apiSign";
		  
	  }

	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiSignok.action" )
	  public String apiSignok(HttpServletRequest req,MemberDTO dto) {
		 
		  int result = service.apiSign(dto);
		  
		  req.setAttribute("result",result);
		  
		  return "main.log.apiSignok";
		  
	  }	
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiLoginok.action" )
	  public String apiLoginok(HttpServletRequest req,MemberDTO ldto,HttpSession session) {
		
		  MemberDTO dto = service.apiLoginok(ldto);
		  
		  session=req.getSession();
		  session.setAttribute("loginDTO", dto);
		  
		  return "main.log.loginok";
		  
	  }

	  @RequestMapping(method= {RequestMethod.GET},value="/main/findPassword.action" )
	  public String findPassword(HttpServletRequest req) {
		  			  
		  return "main.log.findPassword";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/findPasswordCheck.action" )
	  public String findPasswordCheck(HttpServletRequest req,String mEmail) {
		  
		  int result = service.findPassword(mEmail);
		  
		  req.setAttribute("result", result);
		  
		  return "main.log.findPasswordCheck.ajax";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/findPasswordok.action" )
	  public String findPasswordok(HttpServletRequest req,MemberDTO dto) {
		  
		  int result = service.findPasswordChange(dto);
		  
		  req.setAttribute("result", result);
		  
		  return "main.log.login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/findPasswordChange.action" )
	  public String findPasswordChange(HttpServletRequest req,String mEmail) {
		  
		  req.setAttribute("mEmail", mEmail);
		  
		  return "main.log.findPasswordChange";
		  
	  }

	  /*log in 파트*/
	  
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/faqView.action" )
	  public String findPasswordChange(HttpServletRequest req) {
		  
		  
		  
		  return "main.log.faqView";
		  
	  }
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  /*faq파트*/
	  

}
