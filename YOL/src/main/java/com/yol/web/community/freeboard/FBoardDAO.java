package com.yol.web.community.freeboard;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.VFBoardDTO;

@Repository
public class FBoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	
	public int add(VFBoardDTO dto) {
		System.out.println("mseq");
		System.out.println(dto.getmSeq());
		System.out.println(dto.getFbCatSeq());
		System.out.println(dto.getFbName());
		System.out.println(dto.getFbMain());
		return sql.insert("fboard.add", dto);
	}


	public List<VFBoardDTO> list(VFBoardDTO dto) {
		
		return sql.selectList("fboard.list", dto);
	}


	public VFBoardDTO view(String fbSeq) {
		
		return sql.selectOne("fboard.view", fbSeq);
	}


	public List<VFBoardDTO> listshort(VFBoardDTO dto) {
		// TODO Auto-generated method stub
		return sql.selectList("fboard.listshort", dto);
	}


	
}
