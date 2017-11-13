package com.yol.web.main.front;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.FAQTotalDTO;


@Repository
public class FrontDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<FAQTotalDTO> getFaqMain() {
		
		return sql.selectList("faq.getFaqMain");
	}


	
}
