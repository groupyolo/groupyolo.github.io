package com.yol.web.main.mail;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.MemberDTO;

@Repository
public class LogDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public MemberDTO logIn(MemberDTO dto) {

		return sql.selectOne("log.in", dto);
	}
	
}
