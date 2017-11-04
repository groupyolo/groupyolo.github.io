package com.yol.web.member.joinTeam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.JoinBoardDTO;

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

}
