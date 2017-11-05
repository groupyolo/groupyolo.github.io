package com.yol.web.member.joinTeam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Service
public class JoinTeamService implements IJoinTeamService {

	@Autowired
	private JoinTeamDAO dao;
	
	@Override
	@Transactional
	public void add(JoinBoardDTO dto) {
	//모임게시판 글쓰기
		dao.add(dto);
		
	}

	@Override
	@Transactional
	public List<VJoinTeamDTO> list() {
	// 게시판 리스트불러오기
		return dao.list();
	}

	@Override
	public VJoinTeamDTO getDTO(String reSeq) {
	// 글보기 1개글 불러오기
		return dao.view(reSeq);
	}

	@Override
	public List<VJoinMemberDTO> joinList(String reSeq) {
	// 신청자 리스트 불러오기
		return dao.mlist(reSeq);
	}

}
