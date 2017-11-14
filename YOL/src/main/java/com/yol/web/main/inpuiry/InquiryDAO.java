package com.yol.web.main.inpuiry;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.InquiryDTO;

@Repository
public class InquiryDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<InquiryDTO> list() {

		return sql.selectList("inquiry.list");
	}
	
}
