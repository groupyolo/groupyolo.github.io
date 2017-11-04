package com.yol.web.member.joinTeam;

import java.util.List;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.VJoinTeamDTO;

public interface IJoinTeamService {
	
	void add(JoinBoardDTO dto);

	List<VJoinTeamDTO> list();

}
