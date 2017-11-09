package com.yol.web.main.mail;

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
		  
		  return "main/login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/authok.action" )
	  public String authok(HttpServletRequest req, MemberDTO dto) {
		  //메일에서 인증하기 
		  
		  int result = service.authok(dto);
		  
		  return "main/authok";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/sign.action" )
	  public String sign(HttpServletRequest req) {
		  //등록
		  return "main/sign";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/signok.action" )
	  public String signok(HttpServletRequest req, MemberDTO dto) {
		  
		  int result = service.sign(dto);
		  req.setAttribute("result", result);	
		  
		  return "main/signok";
		  
	  }

	  @RequestMapping(method= {RequestMethod.GET},value="/main/login.action" )
	  public String login(HttpServletRequest req) {
		  
		  
		  return "main.login";
		  
	  }
	
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiLoginCheck.action" )
	  public String apiLoginCheck(HttpServletRequest req,MemberDTO dto) {
		 //System.out.println(dto.getMgSeq());
		  int result = service.apiLoginCheck(dto);
		  req.setAttribute("result",result);
		  
		  return "main/apiLoginCheck";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/apiSign.action" )
	  public String apiSign(HttpServletRequest req,MemberDTO dto) {
		  
		  req.setAttribute("dto",dto);
		  
		  return "main/apiSign";
		  
	  }

	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiSignok.action" )
	  public String apiSignok(HttpServletRequest req,MemberDTO dto) {
		 
		  int result = service.apiSign(dto);
		  
		  req.setAttribute("result",result);
		  
		  return "main/apiSignok";
		  
	  }	
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/apiLoginok.action" )
	  public String apiLoginok(HttpServletRequest req,MemberDTO ldto,HttpSession session) {
		 System.out.println("aaa");
		  System.out.println(ldto.getmEmail());
		  MemberDTO dto = service.apiLoginok(ldto);
		  
		  session=req.getSession();
		  session.setAttribute("loginDTO", dto);
		  
		  return "main.loginok";
		  
	  }
	  
	  
	  
	  

}
