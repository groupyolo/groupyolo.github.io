package com.yol.web.member.creation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.VCreationDTO;

@Controller
public class MemberController {

	@Autowired
	private ICreationService ics;
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/main.action")
	public String main(HttpServletRequest req) {

		return "member";
	}
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/home.action")
	public String home(HttpServletRequest req) {

		
		//	return "member.home";
		return "member/home";
	}
	
	
	// POST로 바꿀 준비
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/creationstep1.action")
	public String creationstep1(HttpServletRequest req) {

		return "member/creation/creationstep1";
	}
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationstep2.action")
	public String creationstep2(HttpServletRequest req) {

		return "member/creation/creationstep2";
	}
		
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/create.action")
	public String create(HttpServletRequest req) {

		return "member/creation/projectadd";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationok.action")
	public String creationok(HttpServletRequest req, VCreationDTO dto) {

		int result = ics.add(dto);
		
		req.setAttribute("result", result);
		
		return "member/creation/creationok";
	}	
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/addproject.action")
	public String addproject(HttpServletRequest req) {
		
		
		return "member/creation/addproject";
	}
	
	
	
	
}

