package com.yol.web.community.freeboard;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.FBoardComDTO;
import com.yol.web.DTO.VFBCommentDTO;
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


	public int getTotalCount() {
		
		return sql.selectOne("fboard.getTotalCount");
	}


	public List<VFBoardDTO> search(HashMap<String, String> map) {
		
		return sql.selectList("fboard.search",map);
	}


	public int edit(VFBoardDTO dto) {
		return sql.update("fboard.edit", dto);
	}


	public int del(String fbSeq) {
		return sql.update("fboard.del", fbSeq);
	}


	public List<VFBCommentDTO> getComment(String fbSeq) {
		return sql.selectList("fboard.commentList", fbSeq);
	}


	public int addComment(FBoardComDTO dto) {
		return sql.insert("fboard.addComment", dto);
	}


	public int delComment(FBoardComDTO dto) {
		return sql.delete("fboard.delComment", dto);
	}


	public void bcount(String fbSeq) {
		sql.update("fboard.bcount", fbSeq);
		
	}


	
}
