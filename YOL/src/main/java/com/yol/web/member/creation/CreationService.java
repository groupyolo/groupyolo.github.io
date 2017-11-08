package com.yol.web.member.creation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.VCreationDTO;

@Service
public class CreationService implements ICreationService{

	@Autowired
	private CreationDAO dao;

	@Override
	@Transactional
	public int add(VCreationDTO dto) {
		
		dao.insertJoinBoard(dto);
		dao.insertJoin(dto);
		int result =  dao.insertProject(dto);
		
		return result;
		
	}
	
	
}
