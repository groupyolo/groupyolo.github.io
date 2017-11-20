package com.yol.web.member.joinTeam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
	public List<VJoinTeamDTO> list(HashMap<String, String> map) {
	// 게시판 리스트불러오기
		
		List<VJoinTeamDTO> list = dao.list(map);
		
		for (VJoinTeamDTO dto : list) {			
			//날짜수정
			dto.setjStart((dto.getjStart().substring(0, 10)));
			dto.setjEnd((dto.getjEnd().substring(0, 10)));
			
			//올린시간 수정
			long changeTime = timeCheck(dto.getjRegDate().substring(0,20));
			if (changeTime < 60) {
				dto.setjRegDate(String.valueOf(changeTime%60)+"분전");
			} else if (changeTime < 60*24) {
				dto.setjRegDate(String.valueOf((changeTime/60)%60)+"시간전");				
			} else {
				dto.setjRegDate(String.valueOf((changeTime/60/24)%24)+"일전");				
			}
			//상태수정
			dto.setsName(dto.getsName().equals("모집중")?"<span class='label label-warning'>모집중</span>":dto.getsName().equals("마감")?"<span class='label label-default'>마감</span>":"삭제");
			
		}
				
		return list;
	}

	private long timeCheck(String getjRegDate) {
				
		try {

			Date today = new Date();
			long todayTime = today.getTime();
			
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date regDate = transFormat.parse(getjRegDate);
			long regDateTime = regDate.getTime();
			
			long changeTime = ((todayTime - regDateTime)/60000);
			System.out.println(changeTime);
			
			return changeTime;
			
		} catch (ParseException e) {
			e.printStackTrace();
			return 0;
		}		
		
	}

	@Override
	public VJoinTeamDTO getDTO(String reSeq) {
	// 글보기 1개글 불러오기
		
		VJoinTeamDTO dto = dao.view(reSeq);
		
		//날짜수정
		dto.setjStart((dto.getjStart().substring(0, 10)));
		dto.setjEnd((dto.getjEnd().substring(0, 10)));
		dto.setjRegDate(dto.getjRegDate().substring(0,19));
		dto.setsName(dto.getsName().equals("모집중")?"<span class='label label-warning'>모집중</span>":dto.getsName().equals("마감")?"<span class='label label-default'>마감</span>":"삭제");
		
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
	public int approveM(JoinDTO dto) {
		dto.setApSeq("1");
		return dao.approveM(dto);
	}
	@Override
	public int rejectM(JoinDTO dto) {
		dto.setApSeq("2");
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

	@Override
	public int joinAdd(JoinDTO jdto) {
		jdto.setApSeq("0");
		return dao.joinAdd(jdto);
	}

	@Override
	public int joinCancle(JoinDTO dto) {
		dto.setApSeq("5");
		return dao.joinCancel(dto);
	}

	@Override
	public int del(String reSeq) {
		return dao.del(reSeq);
	}

	@Override
	public int getTotalCount(HashMap<String, String> map) {		
		return dao.getTotalCount(map);
	}

	@Override
	public int stateChange(String reSeq) {
		return dao.stateChange(reSeq);
	}

	@Override
	public List<VJoinTeamDTO> addProject(String reSeq) {
		
		List<VJoinTeamDTO> nlist = dao.addProject(reSeq);
		
		for (VJoinTeamDTO dto : nlist) {			
			//날짜수정
			dto.setjStart((dto.getjStart().substring(0, 10)));
			dto.setjEnd((dto.getjEnd().substring(0, 10)));
		}		
		
		return nlist;
	}


}
