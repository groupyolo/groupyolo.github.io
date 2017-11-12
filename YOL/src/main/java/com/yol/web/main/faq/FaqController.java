package com.yol.web.main.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;

@Controller
public class FaqController {
	
	@Autowired
	private IFaqService service;
	
 
	  @RequestMapping(method= {RequestMethod.GET},value="/main/faqView.action" )
	  public String faqView(HttpServletRequest req) {
		  
		  List<FAQCategoryDTO> categoryList = service.getCategory();
		  List<FAQDTO> faqList = service.getFAQ();
		  
		  System.out.println(faqList.get(0).getTitle());
		  req.setAttribute("categoryList", categoryList);
		  req.setAttribute("faqList", faqList);
		  
		  return "main.faq.faqView";
		  
	  }

}
	
