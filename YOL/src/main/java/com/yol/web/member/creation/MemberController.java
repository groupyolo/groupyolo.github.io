package com.yol.web.member.creation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.MemberDTO;
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
		return "member.creation.home";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/core_template.action")
	public String test(HttpServletRequest req) {

		//	return "member.home";
		return "member.creation.core_template";
	}
	
	// POST로 바꿀 준비
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/creationstep1.action")
	public String creationstep1(HttpServletRequest req) {

		return "member.creation.creationstep1";
	}
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationstep2.action")
	public String creationstep2(HttpServletRequest req) {

		return "member.creation.creationstep2";
	}
		
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/create.action")
	public String create(HttpServletRequest req) {

		return "member.creation.projectadd";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/createpok.action")
	public String createp(HttpServletRequest req, VCreationDTO dto) {

		int result = ics.creation(dto);
		req.setAttribute("result", result);
		
		return "member.creation.creatpok";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationok.action")
	public String creationok(HttpServletRequest req, VCreationDTO dto) {

		int result = ics.add(dto);
		
		req.setAttribute("result", result);
		
		return "member.creation.creationok";
	}	
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/addproject.action")
	public String addproject(HttpServletRequest req) {
		
		
		return "member.creation.addproject";
	}
		
	@RequestMapping(method = { RequestMethod.GET }, value = "/membermenu.action")
	public String membermenu(HttpServletRequest req) {

		return "inc.member.membermenu";
	}
	@RequestMapping(method = { RequestMethod.GET }, value = "/membersubmenu.action")
	public String membersubmenu(HttpServletRequest req) {

		return "inc.member.membersubmenu";
	}
	
	//회원페이지
	//나의정보
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/myinfo.action")
	public String myinfo(HttpServletRequest req, HttpSession session) {

		return "member.memberpage.myinfo";
	}

	@RequestMapping(method = { RequestMethod.GET }, value = "/member/mysites.action")
	public String mysites(HttpServletRequest req, VCreationDTO dto, HttpSession session) {
		MemberDTO ldto = (MemberDTO)session.getAttribute("loginDTO");
		System.out.println("=============");
		System.out.println(ldto.getmSeq());
		System.out.println("=============");
		List<VCreationDTO> list = ics.list(dto, ldto.getmSeq());
		req.setAttribute("vCreationList", list);
		
		return "member.memberpage.mysites";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/concept.action")
	public String concept(HttpServletRequest req) {

		return "member.creation.concept";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/community.action")
	public String boardlist(HttpServletRequest req) {

		return "member.community.boardlist";
	}

	

}

