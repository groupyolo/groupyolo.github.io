package com.yol.web.member.siteManage;

import java.util.List;

import com.yol.web.DTO.ProjectBoardDTO;
import com.yol.web.DTO.ProjectDTO;
import com.yol.web.DTO.ProjectInfoDTO;
import com.yol.web.DTO.ProjectJoinDTO;

public interface ISiteManageService {

	
	List<ProjectInfoDTO> pList(String mSeq);
	
	ProjectDTO pInfo(String prseq);

	List<ProjectJoinDTO> jList(String prseq);

	int jCount(String prseq);

	List<ProjectBoardDTO> bList(String prseq);

	String getJSeq(String getmSeq);

	int add(ProjectBoardDTO bdto);

	ProjectBoardDTO getView(String pbSeq);

	int delok(String pbSeq);

	int edit(ProjectBoardDTO dto);


}
