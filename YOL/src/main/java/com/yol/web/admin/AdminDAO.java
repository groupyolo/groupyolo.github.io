package com.yol.web.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.InquiryDTO;
import com.yol.web.DTO.InquiryboardDTO;
import com.yol.web.DTO.NoticeCategoryDTO;
import com.yol.web.DTO.NoticeboardDTO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<NoticeboardDTO> list() {

		return sql.selectList("admin.list");
	}

	public List<NoticeboardDTO> vlist(String noticeboardseq) {
		
		return sql.selectList("admin.vlist", noticeboardseq);
	}

	public int add(NoticeboardDTO dto) {
		
		return sql.insert("admin.add", dto);
	}

	public int del(String noticeboardseq) {
		
		return sql.delete("admin.del", noticeboardseq);
	}

	public List<InquiryDTO> ilist() {
		
		return sql.selectList("admin.ilist");
	}

	public List<InquiryDTO> ivlist(String inquiryseq) {
		
		return sql.selectList("admin.ivlist",inquiryseq);
	}

	public int iadd(InquiryDTO dto) {
		
		return sql.insert("admin.iadd", dto);
	}

	public int idel(String inquiryseq) {
		
		return sql.delete("admin.idel", inquiryseq);
	}

	public int iedit(String inquiryseq) {

		return sql.update("admin.iedit", inquiryseq);
	}

	public int iedit(InquiryDTO dto) {
		
		return sql.update("admin.iedit", dto);
	}

	public List<InquiryboardDTO> iblist(String inquiryseq) {
		
		return sql.selectList("admin.iblist", inquiryseq);
	}

	public int readd(InquiryboardDTO dto) {
		
		return sql.insert("admin.readd", dto);
	}

	public int readd(String inquiryseq) {
		
		return sql.insert("admin.readd", inquiryseq);
	}

	public int redel(String inquiryboardseq) {
		
		return sql.delete("admin.redel", inquiryboardseq);
	}







	
}










