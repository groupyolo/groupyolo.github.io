package com.yol.web.member.siteManage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.ProjectDTO;

@Service
public class SiteManageService implements ISiteManageService{

	@Autowired
	private SiteManageDAO dao;
	
	@Override
	public ProjectDTO pInfo(String prseq) {
		return dao.pInfo(prseq);
	}
}
