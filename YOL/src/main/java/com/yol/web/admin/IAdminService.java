package com.yol.web.admin;

import java.util.List;

import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.InquiryDTO;
import com.yol.web.DTO.InquiryboardDTO;
import com.yol.web.DTO.NoticeCategoryDTO;
import com.yol.web.DTO.NoticeboardDTO;

public interface IAdminService {

	List<NoticeboardDTO> list();

	List<NoticeboardDTO> vlist(String noticeboardseq);

	int add(NoticeboardDTO dto);

	int del(String noticeboardseq);

	List<InquiryDTO> ilist();

	List<InquiryDTO> ivlist(String inquiryseq);
	
	int iadd(InquiryDTO dto);

	int idel(String inquiryseq);

	int iedit(String inquiryseq);

	int iedit(InquiryDTO dto);

	List<InquiryboardDTO> iblist(String inquiryseq);

	int readd(InquiryboardDTO dto);

	int readd1(String inquiryseq);

	int redel(String inquiryboardseq);

	List<FAQDTO> faqlist();

	List<FAQDTO> fvlist(String FAQseq);

	int faqadd(FAQDTO dto);

	int faqDel(String FAQseq);







	

}
