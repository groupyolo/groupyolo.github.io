package com.yol.web.community.freeboard;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.VFBoardDTO;

public interface IFBoardService {

	int add(VFBoardDTO dto);

	List<VFBoardDTO> list(VFBoardDTO dto);

	VFBoardDTO view(String fbSeq);

	List<VFBoardDTO> listshort(VFBoardDTO dto);

	int getTotalCount();

	List<VFBoardDTO> search(HashMap<String, String> map);

	VFBoardDTO edit(String fbSeq);
	
	
}
