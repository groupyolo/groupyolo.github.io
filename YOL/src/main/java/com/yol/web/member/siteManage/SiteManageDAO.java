package com.yol.web.member.siteManage;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.ProjectDTO;

@Repository
public class SiteManageDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public ProjectDTO pInfo(String prseq) {

		return sql.selectOne("siteManage.pInfo", prseq);
	}
	
	
}
