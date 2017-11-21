package com.yol.web.community.freeboard;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.FBoardComDTO;
import com.yol.web.DTO.VFBCommentDTO;
import com.yol.web.DTO.VFBoardDTO;

public interface IFBoardService {

	int add(VFBoardDTO dto);

	List<VFBoardDTO> list(VFBoardDTO dto);

	VFBoardDTO view(String fbSeq);

	List<VFBoardDTO> listshort(VFBoardDTO dto);

	int getTotalCount();

	List<VFBoardDTO> search(HashMap<String, String> map);

	int edit(VFBoardDTO dto);

	int del(String fbSeq);

	List<VFBCommentDTO> getComment(String fbSeq);

	int addComment(FBoardComDTO dto);

	int delComment(FBoardComDTO dto);

	void bcount(String fbSeq);
	
	
}
