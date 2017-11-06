package com.yol.web.member.joinTeam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.ApproveDTO;
import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Service
public class JoinTeamService implements IJoinTeamService {

	@Autowired
	private JoinTeamDAO dao;
	
	@Override
	public int add(JoinBoardDTO dto) {
		return dao.add(dto);		
	}

	@Override
	public List<VJoinTeamDTO> list() {
	// 게시판 리스트불러오기
		
		List<VJoinTeamDTO> list = dao.list();
		
		for (VJoinTeamDTO dto : list) {			
			//날짜수정
			dto.setjStart((dto.getjStart().substring(0, 10)));
			dto.setjEnd((dto.getjEnd().substring(0, 10)));
		}
				
		return list;
	}

	@Override
	public VJoinTeamDTO getDTO(String reSeq) {
	// 글보기 1개글 불러오기
		
		VJoinTeamDTO dto = dao.view(reSeq);
		
		//날짜수정
		dto.setjStart((dto.getjStart().substring(0, 10)));
		dto.setjEnd((dto.getjEnd().substring(0, 10)));
		
		return dto;
	}

	@Override
	public List<VJoinMemberDTO> joinList(String reSeq) {
	// 신청자 리스트 불러오기
		
		List<VJoinMemberDTO> mlist = dao.mlist(reSeq);
		
		for (VJoinMemberDTO mdto : mlist) {			
			//날짜수정
			mdto.setjRegDate((mdto.getjRegDate().substring(0, 10)));
		}
		
		return mlist;
	}

	@Override
	public int edit(JoinBoardDTO dto) {
		return dao.edit(dto);
	}


}
