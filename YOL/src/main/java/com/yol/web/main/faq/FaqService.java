package com.yol.web.main.faq;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.FAQTotalDTO;

@Service
public class FaqService implements IFaqService{
	
	@Autowired
	private FaqDAO dao;
	
		
	@Override
	public List<FAQCategoryDTO> getCategory() {
		return dao.getCategory();
	}	
		
	
	@Override
	public List<FAQTotalDTO> getFAQ(HashMap<String, String> map) {
		
		return dao.getFaq(map);
	}
	
			

	
	
	
}
