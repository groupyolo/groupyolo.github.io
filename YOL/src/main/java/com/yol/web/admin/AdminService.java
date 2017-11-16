package com.yol.web.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.InquiryDTO;
import com.yol.web.DTO.InquiryboardDTO;
import com.yol.web.DTO.NoticeCategoryDTO;
import com.yol.web.DTO.NoticeboardDTO;


@Service
public class AdminService implements IAdminService {

	@Autowired
	private AdminDAO dao;
	
	@Override
	public List<NoticeboardDTO> list() {
		
		return dao.list();
	}//noticeBoardlist

	@Override
	public List<NoticeboardDTO> vlist(String noticeboardseq) {
		
		return dao.vlist(noticeboardseq);
	}//noticeBoardView
	
	@Override
	public int add(NoticeboardDTO dto) {
		
		return dao.add(dto);
	}//noticeBoardadd
	
	@Override
	public int del(String noticeboardseq) {
		
		return dao.del(noticeboardseq);
	}//noticeBoarddel
	

	@Override
	public List<InquiryDTO> ilist() {
		
		return dao.ilist();
	}//inquiry
	
	@Override
	public List<InquiryDTO> ivlist(String inquiryseq) {
	
		return dao.ivlist(inquiryseq);
	}//inquiryview
	
	@Override
	public int iadd(InquiryDTO dto) {
		
		return dao.iadd(dto);
	}//inquiryadd
	
	@Override
	public int idel(String inquiryseq) {
		
		return dao.idel(inquiryseq);
	}//inquirydel
	
	@Override
	public int iedit(String inquiryseq) {
		
		return dao.iedit(inquiryseq);
	}//inquiryedit
	
	@Override
	public int iedit(InquiryDTO dto) {
		
		return dao.iedit(dto);
	}//inquiryedit
	
	@Override
	public List<InquiryboardDTO> iblist(String inquiryseq) {
		
		return dao.iblist(inquiryseq);
	}
	
	@Override
	public int readd(InquiryboardDTO dto) {
		
		return dao.readd(dto);
	}
	
	@Override
	public int readd1(String inquiryseq) {
		
		return dao.readd(inquiryseq);
	}
	
	@Override
	public int redel(String inquiryboardseq) {
		
		return dao.redel(inquiryboardseq);
	}
	

	
	
}//AmdinService




















