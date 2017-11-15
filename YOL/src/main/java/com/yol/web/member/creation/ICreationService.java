package com.yol.web.member.creation;

import java.util.List;

import com.yol.web.DTO.VCreationDTO;


public interface ICreationService {

	int add(VCreationDTO dto);

	List<VCreationDTO> list(VCreationDTO dto, String mSeq);

	int creation(VCreationDTO dto);
	
	
}
