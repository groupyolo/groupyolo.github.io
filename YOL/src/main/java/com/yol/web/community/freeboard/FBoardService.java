package com.yol.web.community.freeboard;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.FBoardComDTO;
import com.yol.web.DTO.VFBCommentDTO;
import com.yol.web.DTO.VFBoardDTO;

@Service
public class FBoardService implements IFBoardService{

	@Autowired
	private FBoardDAO dao;
	
	@Override
	public int add(VFBoardDTO dto) {
		
		System.out.println("이게 FSERVICE");
		int result = dao.add(dto);
		
		return result;
	}
	
	@Override
	public List<VFBoardDTO> list(VFBoardDTO dto) {
		List<VFBoardDTO> list=dao.list(dto);
		
		return list;
	}
	
	@Override
	public VFBoardDTO view(String fbSeq) {
		
		VFBoardDTO vdto = dao.view( fbSeq);
		return vdto;
	}
	

	@Override
	public List<VFBoardDTO> listshort(VFBoardDTO dto) {
		List<VFBoardDTO> list=dao.listshort(dto);
		return list;
	}
	
	@Override
	public int getTotalCount() {
		
		return dao.getTotalCount();
	}
	
	@Override
	public List<VFBoardDTO> search(HashMap<String, String> map) {
	
		List<VFBoardDTO> list=dao.search(map);
		return list;
	}
	
	@Override
	public int edit(VFBoardDTO dto) {
		return dao.edit(dto);
	}

	@Override
	public int del(String fbSeq) {
		return dao.del(fbSeq);
	}

	@Override
	public List<VFBCommentDTO> getComment(String fbSeq) {

		List<VFBCommentDTO> clist = dao.getComment(fbSeq);
		for(VFBCommentDTO cdto : clist) {	
			cdto.setFbComTime(cdto.getFbComTime().substring(0,19));		
		}
		return clist;
	}

	@Override
	public int addComment(FBoardComDTO dto) {
		return dao.addComment(dto);
	}

	@Override
	public int delComment(FBoardComDTO dto) {
		return dao.delComment(dto);
	}

	@Override
	public void bcount(String fbSeq) {
		dao.bcount(fbSeq);		
	}
}
