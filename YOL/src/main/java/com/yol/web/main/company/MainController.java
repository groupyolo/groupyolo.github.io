package com.yol.web.main.company;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(method = { RequestMethod.GET }, value = "/main/company.action")
	public String company(HttpServletRequest req) {

		return "main.company.company";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/main/company2.action")
	public String company2(HttpServletRequest req) {

		return "main.company.company2";
	}
}
