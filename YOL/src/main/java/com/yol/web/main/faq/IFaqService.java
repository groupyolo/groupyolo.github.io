package com.yol.web.main.faq;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.FAQTotalDTO;

public interface IFaqService {

	List<FAQCategoryDTO> getCategory();

	List<FAQTotalDTO> getFAQ(HashMap<String, String> map);


}
