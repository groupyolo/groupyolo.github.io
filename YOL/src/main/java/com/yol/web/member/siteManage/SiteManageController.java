package com.yol.web.member.siteManage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.ProjectDTO;

@Controller
public class SiteManageController {

	@Autowired
	private ISiteManageService service;
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/test.action" )
	private String test(HttpServletRequest req) {
		return "/member/siteManage/test";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/view.action" )
	private String view(HttpServletRequest req, String prseq) {
		
		ProjectDTO pdto = service.pInfo(prseq);
		
		req.setAttribute("pdto", pdto);
		
		return "member/siteManage/view";
	}
	
}
