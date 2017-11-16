package com.yol.web.main.front;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQTotalDTO;
import com.yol.web.DTO.IncFunctionDTO;


@Controller
public class FrontController {
	
	@Autowired
	private IFrontService service;
	
 
	  @RequestMapping(method= {RequestMethod.GET},value="/main/frontview.action" )
	  public String frontview(HttpServletRequest req) {
		  
		  List<FAQTotalDTO> faqList = service.getFaqMain();
		  List<IncFunctionDTO> incList = service.getInc(); 
		  
		  req.setAttribute("faqList", faqList);
		  req.setAttribute("incList", incList);
		  
		  return "main.front.frontview";
		  
	  }

}
	
