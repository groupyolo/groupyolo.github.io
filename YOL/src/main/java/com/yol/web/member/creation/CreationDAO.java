package com.yol.web.member.creation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.VCreationDTO;

@Repository
public class CreationDAO {

	
	@Autowired
	private SqlSessionTemplate sql;
	
	public int insertJoinBoard(VCreationDTO dto) {
		// 
/*		System.out.println();
		System.out.println(dto.getmSeq());
		System.out.println(dto.getjStart());
		System.out.println(dto.getjEnd());
	*/
		
		int result = sql.insert("createproject.insertJoinBoard", dto);
		
		return result;
	}

	public void insertJoin(VCreationDTO dto) {
		// 
		sql.insert("createproject.insertJoin", dto);
	}

	public int insertProject(VCreationDTO dto) {
		/*System.out.println(dto.getReSeq());
		System.out.println(dto.getTeSeq());
		System.out.println(dto.getOpSeq());
		System.out.println(dto.getPrName());
		System.out.println(dto.getPrURL());
		
		System.out.println(dto.getSiteName());
		*/ 
		int result = sql.insert("createproject.insertProject", dto);
		
		return result;
	}

	public List<VCreationDTO> list(VCreationDTO dto, String mSeq) {
		
				
		return sql.selectList("createproject.getList", mSeq);
	}

	
	
	
}
