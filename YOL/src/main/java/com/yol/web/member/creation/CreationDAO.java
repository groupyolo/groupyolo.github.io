package com.yol.web.member.creation;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.VCreationDTO;

@Repository
public class CreationDAO {

	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertJoinBoard(VCreationDTO dto) {
		// 
		sql.insert("createproject.insertJoinBoard", dto);
	}

	public void insertJoin(VCreationDTO dto) {
		// 
		sql.insert("createproject.insertJoin", dto);
	}

	public void insertProject(VCreationDTO dto) {
		// 
		sql.insert("createproject.insertProject", dto);
	}

	
	
	
}
