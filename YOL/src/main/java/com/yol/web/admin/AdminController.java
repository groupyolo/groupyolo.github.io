package com.yol.web.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.InquiryDTO;
import com.yol.web.DTO.InquiryboardDTO;
import com.yol.web.DTO.NoticeboardDTO;

@Controller
public class AdminController {
	
	@Autowired 
	private IAdminService service;
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoard.action")
	public String noticeBoard(HttpServletRequest req) {

		List<NoticeboardDTO> list = service.list();
		
		req.setAttribute("list", list);
		
		return "admin.noticeboard.noticeBoard";
	}//noticeBoard
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardView.action")
	public String noticeBoardView(HttpServletRequest req,String noticeboardseq) {

		List<NoticeboardDTO> vlist = service.vlist(noticeboardseq);
		
		req.setAttribute("vlist", vlist);
		
		return "admin.noticeboard.noticeBoardView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardadd.action")
	public String noticeBoardadd(HttpServletRequest req) {
		
		return "admin.noticeboard.noticeBoardadd";
		
	}//noticeBoardViewadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/noticeBoardaddOk.action")
	public String noticeBoardaddOk(HttpServletRequest req, NoticeboardDTO dto) {
		
		int result = service.add(dto);
		
		return "admin.noticeboard.noticeBoardaddOk";
	}//noticeBoardViewaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardDel.action")
	public String noticeBoardDel(HttpServletRequest req, String noticeboardseq) {

		int result = service.del(noticeboardseq);
		
		req.setAttribute("result", result);
		
		return "admin.noticeboard.noticeBoardDel";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiry.action")
	public String inquiry(HttpServletRequest req) {

		List<InquiryDTO> ilist = service.ilist();
		
		req.setAttribute("ilist", ilist);
		
		return "admin.inquiry.inquiry";
	}//notice
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryView.action")
	public String inquiryView(HttpServletRequest req,String inquiryseq, String hits) {

		List<InquiryDTO> ivlist = service.ivlist(inquiryseq);
		
		req.setAttribute("ivlist", ivlist);
		
		List<InquiryboardDTO> iblist = service.iblist(inquiryseq);
		
		req.setAttribute("iblist", iblist);
		
		return "admin.inquiry.inquiryView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryadd.action")
	public String inquiryadd(HttpServletRequest req) {
		
		return "admin.inquiry.inquiryadd";
		
	}//noticeBoardViewadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/inquiryaddOk.action")
	public String inquiryaddOk(HttpServletRequest req, InquiryDTO dto) {
		
		int result = service.iadd(dto);
		
		return "admin.inquiry.inquiryaddOk";
	}//inquiryaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryDel.action")
	public String inquiryDel(HttpServletRequest req, String inquiryseq) {
		
		int result = service.idel(inquiryseq);
		
		req.setAttribute("result", result);
		
		return "admin.inquiry.inquiryDel";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryEdit.action")
	public String inquiryEdit(HttpServletRequest req, String inquiryseq) {
		
		
		List<InquiryDTO> ivlist = service.ivlist(inquiryseq);
		
		req.setAttribute("ivlist", ivlist);
				
		return "admin.inquiry.inquiryEdit";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/inquiryEditOk.action")
	public String inquiryEditOk(HttpServletRequest req, InquiryDTO dto) {
		
		int result = service.iedit(dto);
		
		return "admin.inquiry.inquiryEditOk";
	}//inquiryaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryBoardadd.action")
	public String inquiryBoard(HttpServletRequest req) {
		
				
		return "admin.inquiry.inquiryView";
		
	}//inquiryBoardadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/inquiryBoardOk.action")
	public String inquiryBoardOk(HttpServletRequest req,InquiryboardDTO dto,String inquiryseq) {
		
		int result = service.readd(dto);

		int result1 = service.readd1(inquiryseq);
		
		return "admin.inquiry.inquiryBoardOk";
	}//inquiryBoardOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryBoardDel.action")
	public String inquiryBoardDel(HttpServletRequest req, String inquiryboardseq) {
		
		int result = service.redel(inquiryboardseq);
		
		req.setAttribute("result", result);
		
		return "admin.inquiry.inquiryBoardDel";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/faq.action")
	public String faqView(HttpServletRequest req) {

		List<FAQDTO> faqlist = service.faqlist();
		
		req.setAttribute("faqlist", faqlist);
		
		return "admin.faq.faq";
	}//faq

	@RequestMapping(method={RequestMethod.GET}, value="/admin/faqView.action")
	public String faqView(HttpServletRequest req,String FAQseq) {

		List<FAQDTO> fvlist = service.fvlist(FAQseq);
		
		req.setAttribute("fvlist", fvlist);
	
		return "admin.faq.faqView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/faqadd.action")
	public String faqadd(HttpServletRequest req) {
		
		return "admin.faq.faqadd";
		
	}//faqadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/faqaddOk.action")
	public String faqaddOk(HttpServletRequest req, FAQDTO dto) {
		
		int result = service.faqadd(dto);
		
		return "admin.faq.faqaddOk";
	}//faqaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/faqDel.action")
	public String faqDel(HttpServletRequest req, String FAQseq) {

		int result = service.faqDel(FAQseq);
		
		req.setAttribute("result", result);
		
		return "admin.faq.faqDel";
		
	}//faqDel
	
	
}//public























