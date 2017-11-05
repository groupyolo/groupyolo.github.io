package com.yol.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(method= {RequestMethod.GET},value="/main/login.action")
	public String hello() {
		//JSP ViewResolver -> Tiles ViewResolver
		return "main.login";
	}
			
}
