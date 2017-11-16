package com.yol.web.main.faq;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.FAQTotalDTO;

@Controller
public class FaqController {
	
	@Autowired
	private IFaqService service;
	
 
	  @RequestMapping(method= {RequestMethod.GET},value="/main/faqview.action" )
	  public String faqView(HttpServletRequest req, String search) throws UnsupportedEncodingException {
		  
		  req.setCharacterEncoding("UTF-8");
		  String isSearch = "y";
		  if(search==null || search.equals("")){
			  isSearch="n";
		  }
		  
		  HashMap<String, String> map = new HashMap<String, String>();
		  
		  map.put("isSearch", isSearch);
		  map.put("search", search);
		  
		  // 그냥 뷰로 만들어서 한번에 하는 걸로 고치기.
		  List<FAQCategoryDTO> categoryList = service.getCategory();
		  List<FAQTotalDTO> faqList = service.getFAQ(map);
		  
		  
		  
		 
		  req.setAttribute("categoryList", categoryList);
		  req.setAttribute("faqList", faqList);
		  
		  return "main.faq.faqview";
		  
	  }

}
	
