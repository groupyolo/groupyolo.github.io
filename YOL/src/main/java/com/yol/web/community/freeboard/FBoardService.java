package com.yol.web.community.freeboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
