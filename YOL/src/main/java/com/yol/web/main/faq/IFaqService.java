package com.yol.web.main.faq;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;

public interface IFaqService {

	List<FAQCategoryDTO> getCategory();

	List<FAQDTO> getFAQ(HashMap<String, String> map);


}
