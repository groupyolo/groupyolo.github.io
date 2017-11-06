package com.yol.web.main.mail;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.MemberDTO;

@Controller
public class LogController {
	
	@Autowired
	private ILogService service	;
	
	  @RequestMapping(value="/emailConfirm.action", method= {RequestMethod.GET})
	    public String emailConfirm(HttpServletRequest req){
	        try {
	         //   service.confirm();
	            req.setAttribute("check", true);
	        } catch (Exception e) {
	            req.setAttribute("check", false);
	        }
	        return "emailConfirm";
	    }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/signAuth.action" )
	  public String signAuth(HttpServletRequest req, String mEmail) {
		  
		  return "main/login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.GET},value="/main/sign.action" )
	  public String sign(HttpServletRequest req) {
		  
		  return "main/sign";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/signok.action" )
	  public String signok(HttpServletRequest req, MemberDTO dto) {
		  
		  int result = service.sign(dto);
		  req.setAttribute("result", result);	
		  req.setAttribute("dto", dto);	
		  
		  return "main/signok";
		  
	  }

	  @RequestMapping(method= {RequestMethod.GET},value="/main/login.action" )
	  public String login(HttpServletRequest req) {
		  
		  return "main/login";
		  
	  }
	  
	  @RequestMapping(method= {RequestMethod.POST},value="/main/loginok.action" )
	  public String loginok(HttpServletRequest req,MemberDTO ldto) {
		  
		  
		  
		  MemberDTO dto = service.logIn(ldto);
		  req.setAttribute("dto",dto);
		  
		  return "main/loginok";
		  
	  }
	  


}
