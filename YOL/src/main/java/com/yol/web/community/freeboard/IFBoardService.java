package com.yol.web.community.freeboard;

import java.util.List;

import com.yol.web.DTO.VFBoardDTO;

public interface IFBoardService {

	int add(VFBoardDTO dto);

	List<VFBoardDTO> list(VFBoardDTO dto);

	VFBoardDTO view(String fbSeq);	
	
}
