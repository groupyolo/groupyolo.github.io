package com.yol.web.main.inpuiry;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.InquiryDTO;

@Repository
public class InquiryDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<InquiryDTO> list(HashMap<String, String> map) {

		return sql.selectList("inquiry.list",map);
	}

	public int getTotalCount() {

		return sql.selectOne("inquiry.getTotalCount");
	}
	
}
