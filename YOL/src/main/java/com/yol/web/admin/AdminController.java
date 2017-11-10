package com.yol.web.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		return "admin/noticeBoard";
	}//noticeBoard
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardView.action")
	public String noticeBoardView(HttpServletRequest req,String noticeboardseq) {

		List<NoticeboardDTO> vlist = service.vlist(noticeboardseq);
		
		req.setAttribute("vlist", vlist);
		
		return "admin/noticeBoardView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardadd.action")
	public String noticeBoardadd(HttpServletRequest req) {
		
		return "admin/noticeBoardadd";
		
	}//noticeBoardViewadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/noticeBoardaddOk.action")
	public String noticeBoardaddOk(HttpServletRequest req, NoticeboardDTO dto) {
		
		int result = service.add(dto);
		
		return "admin/noticeBoardaddOk";
	}//noticeBoardViewaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/noticeBoardDel.action")
	public String noticeBoardDel(HttpServletRequest req, String noticeboardseq) {
		System.out.println(noticeboardseq);
		int result = service.del(noticeboardseq);
		
		req.setAttribute("result", result);
		
		return "admin/noticeBoardDel";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiry.action")
	public String inquiry(HttpServletRequest req) {

		List<InquiryDTO> ilist = service.ilist();
		
		req.setAttribute("ilist", ilist);
		
		return "admin/inquiry";
	}//notice
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryView.action")
	public String inquiryView(HttpServletRequest req,String inquiryseq) {

		List<InquiryDTO> ivlist = service.ivlist(inquiryseq);
		
		req.setAttribute("ivlist", ivlist);
		
		return "admin/inquiryView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryadd.action")
	public String inquiryadd(HttpServletRequest req) {
		
		return "admin/inquiryadd";
		
	}//noticeBoardViewadd
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/inquiryaddOk.action")
	public String inquiryaddOk(HttpServletRequest req, InquiryDTO dto) {
		
		int result = service.iadd(dto);
		
		return "admin/inquiryaddOk";
	}//inquiryaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryDel.action")
	public String inquiryDel(HttpServletRequest req, String inquiryseq) {
		
		int result = service.idel(inquiryseq);
		
		req.setAttribute("result", result);
		
		return "admin/inquiryDel";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryEdit.action")
	public String inquiryEdit(HttpServletRequest req, String inquiryseq) {
		
		
		List<InquiryDTO> ivlist = service.ivlist(inquiryseq);
		
		req.setAttribute("ivlist", ivlist);
				
		return "admin/inquiryEdit";
		
	}//noticeBoardViewDel
	
	@RequestMapping(method={RequestMethod.POST}, value="/admin/inquiryEditOk.action")
	public String inquiryEditOk(HttpServletRequest req, InquiryDTO dto) {
		
		int result = service.iedit(dto);
		
		return "admin/inquiryEditOk";
	}//inquiryaddOk
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/inquiryBoard.action")
	public String inquiryBoard(HttpServletRequest req,String inquiryseq) {

		List<InquiryDTO> ivlist = service.ivlist(inquiryseq);
		
		req.setAttribute("ivlist", ivlist);
		
		List<InquiryboardDTO> iblist = service.iblist();
		
		req.setAttribute("iblist", iblist);
		
		return "admin/inquiryView";
	}//noticeBoardView
	
	@RequestMapping(method={RequestMethod.GET}, value="/admin/reply.action")
	public String reply(HttpServletRequest req) {
		
		return "adim/reply";
	}

	
	
	
	
}//public























