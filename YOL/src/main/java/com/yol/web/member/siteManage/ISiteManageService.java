package com.yol.web.member.siteManage;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.PbCommentDTO;
import com.yol.web.DTO.ProjectBoardDTO;
import com.yol.web.DTO.ProjectDTO;
import com.yol.web.DTO.ProjectInfoDTO;
import com.yol.web.DTO.ProjectJoinDTO;

public interface ISiteManageService {

	
	List<ProjectInfoDTO> pList(String mSeq);
	
	ProjectDTO pInfo(String prseq);

	List<ProjectJoinDTO> jList(String prseq);

	int jCount(String prseq);

	List<ProjectBoardDTO> bList(HashMap<String, String> map);

	String getJSeq(String getmSeq);

	int add(ProjectBoardDTO bdto);

	ProjectBoardDTO getView(String pbSeq);

	int delok(String pbSeq);

	int edit(ProjectBoardDTO dto);

	int commentAdd(PbCommentDTO cdto);

	int getpbcSeq();

	List<PbCommentDTO> pbcList(String pbSeq);

	PbCommentDTO getpbcdto(int pbcSeq);

	int commentDel(String pbcSeq);

	int getTotalCount(HashMap<String, String> map);

	int prdelok(String prSeq);


}
