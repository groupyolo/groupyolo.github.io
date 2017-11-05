package com.yol.web.member.joinTeam;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Repository
public class JoinTeamDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public int add(JoinBoardDTO dto) {
		return sql.insert("joinTeam.add", dto);		
	}

	public List<VJoinTeamDTO> list() {
		return sql.selectList("joinTeam.list");
	}

	public VJoinTeamDTO view(String reSeq) {
		return sql.selectOne("joinTeam.view", reSeq);
	}

	public List<VJoinMemberDTO> mlist(String reSeq) {
		return sql.selectList("joinTeam.member", reSeq);
	}

	public int edit(JoinBoardDTO dto) {
		return sql.update("joinTeam.edit", dto);
	}
	
}
