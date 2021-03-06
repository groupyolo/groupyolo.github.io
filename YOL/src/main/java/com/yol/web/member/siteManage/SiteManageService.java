package com.yol.web.member.siteManage;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.PbCommentDTO;
import com.yol.web.DTO.ProjectBoardDTO;
import com.yol.web.DTO.ProjectDTO;
import com.yol.web.DTO.ProjectInfoDTO;
import com.yol.web.DTO.ProjectJoinDTO;

@Service
public class SiteManageService implements ISiteManageService{

	@Autowired
	private SiteManageDAO dao;
	
	@Override
	public List<ProjectInfoDTO> pList(String mSeq) {
		return dao.pList(mSeq);
	}
	
	@Override
	public ProjectDTO pInfo(String prseq) {
		return dao.pInfo(prseq);
	}
	
	@Override
	public int jCount(String prseq) {
		return dao.jCount(prseq);
	}
	
	@Override
	public List<ProjectJoinDTO> jList(String prseq) {
		return dao.jList(prseq);
	}
	
	@Override
	public List<ProjectBoardDTO> bList(HashMap<String, String> map) {
			List<ProjectBoardDTO> blist = dao.bList(map);
			for(ProjectBoardDTO dto : blist) {
				dto.setPbregdate(dto.getPbregdate().substring(0,10));
			}
		return blist;
	}
	
	@Override
	public String getJSeq(String mSeq) {
		return dao.getJSeq(mSeq);
	}
	
	@Override
	public int add(ProjectBoardDTO bdto) {
		return dao.add(bdto);
	}
	
	@Override
	public ProjectBoardDTO getView(String pbSeq) {
		return dao.getView(pbSeq);
	}
	
	@Override
	public int delok(String pbSeq) {
		return dao.delok(pbSeq);
	}
	
	@Override
	public int edit(ProjectBoardDTO dto) {
		return dao.edit(dto);
	}
	
	@Override
	public int commentAdd(PbCommentDTO cdto) {
		return dao.commentAdd(cdto);
	}
	
	@Override
	public int getpbcSeq() {
		return dao.getpbcSeq();
	}
	
	@Override
	public List<PbCommentDTO> pbcList(String pbSeq) {
		List<PbCommentDTO> pbclist = dao.pbcList(pbSeq);
		for(PbCommentDTO dto : pbclist) {
			dto.setPbcRegdate(dto.getPbcRegdate().substring(0, 16));
		}
		return pbclist;
	}
	
	@Override
	public PbCommentDTO getpbcdto(int pbcSeq) {
		PbCommentDTO dto = dao.getpbcdto(pbcSeq);
		dto.setPbcRegdate(dto.getPbcRegdate().substring(0, 16));
		return dto;
	}
	
	@Override
		public int commentDel(String pbcSeq) {
			return dao.commentDel(pbcSeq);
		}
	
	@Override
	public int getTotalCount(HashMap<String, String> map) {
		return dao.getTotalCount(map);
	}

	@Override
	public int prdelok(String prSeq) {
		return dao.prdelok(prSeq);
	}
}
