package com.yol.web.main.faq;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.FAQTotalDTO;

@Repository
public class FaqDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<FAQCategoryDTO> getCategory() {
		return sql.selectList("faq.getCategory");
	}

	public List<FAQTotalDTO> getFaq(HashMap<String, String> map) {
		return sql.selectList("faq.getFaq",map);
	}


	
}
