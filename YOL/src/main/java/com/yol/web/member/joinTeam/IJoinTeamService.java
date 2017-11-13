package com.yol.web.member.joinTeam;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.JoinDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

public interface IJoinTeamService {
	
	int add(JoinBoardDTO dto);

	//list목록
	List<VJoinTeamDTO> list(HashMap<String, String> map);

	//view페이지 
	VJoinTeamDTO getDTO(String reSeq);

	List<VJoinMemberDTO> joinList(String reSeq);

	int edit(JoinBoardDTO dto);

	List<VJoinTeamDTO> masterDTO(String mSeq);

	int rejectM(JoinDTO dto);

	MemberDTO searchM(String mEmail);

	int addM(String mEmail, String reSeq);

	int joinAdd(JoinDTO jdto);

	int joinCancle(JoinDTO dto);

	int approveM(JoinDTO dto);

	int del(String reSeq);

	int getTotalCount(HashMap<String, String> map);


}
