package com.yol.web.main.template;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TempController {

	@RequestMapping(method = { RequestMethod.GET }, value = "/main/templateview.action")
	public String templateview(HttpServletRequest req) {

		return "main.template.templateview";
	}

}
