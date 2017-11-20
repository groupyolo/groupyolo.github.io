package com.yol.web.member.template;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TemplateController {

	@RequestMapping(method= {RequestMethod.GET},value="/member/imgtemp.action")
	public String template1() {
		return "member.template.imgtemp";
	}
	
}
