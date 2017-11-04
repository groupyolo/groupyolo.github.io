package com.yol.web.member.joinTeam;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.JoinBoardDTO;

@Repository
public class JoinTeamDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public void add(JoinBoardDTO dto) {
		sql.insert("joinTeam.add", dto);
		
	}
	
}
