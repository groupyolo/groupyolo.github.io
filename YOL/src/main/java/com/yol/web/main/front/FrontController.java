package com.yol.web.main.front;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQTotalDTO;


@Controller
public class FrontController {
	
	@Autowired
	private IFrontService service;
	
 
	  @RequestMapping(method= {RequestMethod.GET},value="/main/frontView.action" )
	  public String frontView(HttpServletRequest req) {
		  
		  List<FAQTotalDTO> faqList = service.getFaqMain();
		 
		  req.setAttribute("faqList", faqList);
		  
		  return "main.front.frontView";
		  
	  }

}
	
