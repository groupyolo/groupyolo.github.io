package com.test.web.main.mail;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogController {
	
	@Autowired
	private LogService service;
	
	  @RequestMapping(value="emailConfirm", method=RequestMethod.GET)
	    public String emailConfirm(HttpServletRequest req){
	        try {
	         //   service.confirm();
	            req.setAttribute("check", true);
	        } catch (Exception e) {
	            req.setAttribute("check", false);
	        }
	        return "emailConfirm";
	    }


}
