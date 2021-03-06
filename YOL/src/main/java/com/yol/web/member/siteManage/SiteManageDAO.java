package com.yol.web.member.siteManage;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.PbCommentDTO;
import com.yol.web.DTO.ProjectBoardDTO;
import com.yol.web.DTO.ProjectDTO;
import com.yol.web.DTO.ProjectInfoDTO;
import com.yol.web.DTO.ProjectJoinDTO;

@Repository
public class SiteManageDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<ProjectInfoDTO> pList(String mSeq) {
		return sql.selectList("siteManage.pList", mSeq);
	}

	public ProjectDTO pInfo(String prseq) {

		return sql.selectOne("siteManage.pInfo", prseq);
	}

	public List<ProjectJoinDTO> jList(String prseq) {
		return sql.selectList("siteManage.jList", prseq);
	}

	public int jCount(String prseq) {
		return sql.selectOne("siteManage.jCount", prseq);
	}

	public List<ProjectBoardDTO> bList(HashMap<String, String> map) {
		System.out.println("fkfkfkfkfkfkfkf");
		System.out.println(map.get("isSearch"));
		return sql.selectList("siteManage.bList", map);
	}

	public String getJSeq(String mSeq) {
		return sql.selectOne("siteManage.getJSeq", mSeq);
	}

	public int add(ProjectBoardDTO bdto) {
		return sql.insert("siteManage.add", bdto);
	}

	public ProjectBoardDTO getView(String pbSeq) {
		return sql.selectOne("siteManage.view", pbSeq);
	}

	public int delok(String pbSeq) {
		return sql.delete("siteManage.delok", pbSeq);
	}

	public int edit(ProjectBoardDTO dto) {
		return sql.update("siteManage.edit", dto);
	}

	public int commentAdd(PbCommentDTO cdto) {
		return sql.insert("siteManage.commentAdd", cdto);
	}

	public int getpbcSeq() {
		return sql.selectOne("siteManage.getpbcSeq");
	}

	public List<PbCommentDTO> pbcList(String pbSeq) {
		return sql.selectList("siteManage.pbcList", pbSeq);
	}

	public PbCommentDTO getpbcdto(int pbcSeq) {
		return sql.selectOne("siteManage.getpbcdto", pbcSeq);
	}

	public int commentDel(String pbcSeq) {
		return sql.delete("siteManage.commentDel", pbcSeq);
	}

	public int getTotalCount(HashMap<String, String> map) {
		return sql.selectOne("siteManage.getTotalCount", map);
	}

	public int prdelok(String prSeq) {
		return sql.update("siteManage.prdelok", prSeq);
	}
	
	
}
