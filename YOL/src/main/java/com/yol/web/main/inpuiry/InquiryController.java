package com.yol.web.main.inpuiry;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.InquiryDTO;

@Controller
public class InquiryController {

	@Autowired
	private IInquiryService service;
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/inquiry/list.action")
	public String list(HttpServletRequest req) {

		List<InquiryDTO> list = service.list(); 
		
		req.setAttribute("list", list);
		
		return "main.inquiry.list";
	}
	
}
