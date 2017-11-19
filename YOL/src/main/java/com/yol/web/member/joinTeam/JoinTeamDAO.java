package com.yol.web.member.joinTeam;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.ApproveDTO;
import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.JoinDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Repository
public class JoinTeamDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public int add(JoinBoardDTO dto) {
		return sql.insert("joinTeam.add", dto);		
	}

	public List<VJoinTeamDTO> list(HashMap<String, String> map) {
		return sql.selectList("joinTeam.list", map);
	}

	public VJoinTeamDTO view(String reSeq) {
		return sql.selectOne("joinTeam.view", reSeq);
	}

	public List<VJoinMemberDTO> mlist(String reSeq) {
		System.out.println(reSeq);
		return sql.selectList("joinTeam.member", reSeq);
	}

	public int edit(JoinBoardDTO dto) {
		return sql.update("joinTeam.edit", dto);
	}

	public List<ApproveDTO> approveList() {
		return sql.selectList("joinTeam.approve");
	}

	public List<VJoinTeamDTO> masterDTO(String mSeq) {
		return sql.selectList("joinTeam.master", mSeq);
	}

	public int rejectM(JoinDTO dto) {
		return sql.update("joinTeam.changeMember", dto);
	}

	public MemberDTO searchM(String mEmail) {
		return sql.selectOne("joinTeam.searchMember", mEmail);
	}

	public int addM(JoinDTO jdto) {
		return sql.insert("joinTeam.addMember", jdto);
	}

	public String find(String mSeq) {
		return sql.selectOne("joinTeam.find", mSeq);
	}

	public int joinAdd(JoinDTO jdto) {
		return sql.insert("joinTeam.addMember", jdto);
	}

	public int joinCancel(JoinDTO dto) {
		return sql.update("joinTeam.changeMember", dto);
	}

	public int approveM(JoinDTO dto) {
		return sql.update("joinTeam.changeMember", dto);
	}

	public int del(String reSeq) {
		return sql.update("joinTeam.del", reSeq);
	}

	public int getTotalCount(HashMap<String, String> map) {
		return sql.selectOne("joinTeam.getTotalCount", map);
	}

	public int stateChange(String reSeq) {
		return sql.update("joinTeam.state", reSeq);
	}

	public List<VJoinTeamDTO> addProject(String reSeq) {
		return sql.selectList("joinTeam.view", reSeq);
	}
	
}
