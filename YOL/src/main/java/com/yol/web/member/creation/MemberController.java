package com.yol.web.member.creation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@RequestMapping(method = { RequestMethod.GET }, value = "/main.action")
	public String main(HttpServletRequest req) {

		return "member";
	}
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/home.action")
	public String home(HttpServletRequest req) {

		return "member.home";
	}
	
	
}

