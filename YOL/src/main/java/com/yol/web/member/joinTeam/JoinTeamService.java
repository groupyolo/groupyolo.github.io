package com.yol.web.member.joinTeam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.JoinDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Service
public class JoinTeamService implements IJoinTeamService {

	@Autowired
	private JoinTeamDAO dao;
	
	@Override
	@Transactional
	public int add(JoinBoardDTO dto) {
		int result;

		try {
			//1
			dao.add(dto);
			//2
			String reSeq = dao.find(dto.getmSeq());
			
			JoinDTO jdto = new JoinDTO();
				jdto.setReSeq(reSeq);
				jdto.setmSeq(dto.getmSeq());
				jdto.setApSeq("1");
			//3
			dao.addM(jdto);
			
			result = 1;
		} catch (Exception e) {
			result = 0;
		}
		return result;		
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

	@Override
	public List<VJoinTeamDTO> masterDTO(String mSeq) {
		
		List<VJoinTeamDTO> tlist = dao.masterDTO(mSeq);
		
		for (VJoinTeamDTO dto : tlist) {			
			//날짜수정
			dto.setjStart((dto.getjStart().substring(0, 10)));
			dto.setjEnd((dto.getjEnd().substring(0, 10)));
		}
		
		return tlist;
	}

	@Override
	public int rejectM(JoinDTO dto) {

		return dao.rejectM(dto);
	}

	@Override
	public MemberDTO searchM(String mEmail) {
		return dao.searchM(mEmail);
	}

	@Override
	public int addM(String mEmail, String reSeq) {
		
		MemberDTO dto = dao.searchM(mEmail);
		JoinDTO jdto = new JoinDTO();
			jdto.setmSeq(dto.getmSeq());
			jdto.setReSeq(reSeq);
			jdto.setApSeq("4");
		
		int result = dao.addM(jdto);		
		return result;
	}

}
