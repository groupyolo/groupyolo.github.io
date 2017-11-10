package com.yol.web.member.siteManage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.PbCommentDTO;
import com.yol.web.DTO.ProjectBoardDTO;
import com.yol.web.DTO.ProjectDTO;
import com.yol.web.DTO.ProjectInfoDTO;
import com.yol.web.DTO.ProjectJoinDTO;

@Controller
public class SiteManageController {

	@Autowired
	private ISiteManageService service;
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/test.action" )
	private String test(HttpServletRequest req) {
		 
		HttpSession session = req.getSession();
		MemberDTO ldto =  (MemberDTO) session.getAttribute("loginDTO");
		String mSeq = ldto.getmSeq();

		List<ProjectInfoDTO> plist = service.pList(mSeq);
		req.setAttribute("plist", plist);
		
		return "member.siteManage.test";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/manage.action" )
	private String manage(HttpServletRequest req, String prSeq) {
		
		HttpSession session = req.getSession();
		
		//프로젝트 정보
		ProjectDTO pdto = service.pInfo(prSeq);
	
		String mSeq = ((MemberDTO) session.getAttribute("loginDTO")).getmSeq();
		//내가 개설한 사이트 정보 
		List<ProjectInfoDTO> plist = service.pList(mSeq);

		int count = service.jCount(prSeq) ;
		if ( count != 0) {
			List<ProjectJoinDTO> jlist = service.jList(prSeq);
			req.setAttribute("jlist", jlist);
		}
		
		// 프로젝트 게시판 리스트 가져오기 
		List<ProjectBoardDTO> blist = service.bList(prSeq);
		
	
		req.setAttribute("count", count);
		req.setAttribute("plist", plist);
		req.setAttribute("pdto", pdto);
		req.setAttribute("blist", blist);
		return "member.siteManage.list";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/add.action" )
	private String add(HttpServletRequest req, String prSeq) {
		
		HttpSession session = req.getSession();
		
		//프로젝트 정보
		ProjectDTO pdto = service.pInfo(prSeq);
		
		String mSeq = ((MemberDTO) session.getAttribute("loginDTO")).getmSeq();
		//내가 개설한 사이트 정보 
		List<ProjectInfoDTO> plist = service.pList(mSeq);
		
		int count = service.jCount(prSeq) ;
		if ( count != 0) {
			List<ProjectJoinDTO> jlist = service.jList(prSeq);
			req.setAttribute("jlist", jlist);
		}
		
		
		req.setAttribute("count", count);
		req.setAttribute("plist", plist);
		req.setAttribute("pdto", pdto);

		return "member.siteManage.boardadd";
	}
	
	@RequestMapping (method= {RequestMethod.POST}, value="/member/addok.action" )
	private String addok(HttpServletRequest req, ProjectBoardDTO bdto) {
			
		String jSeq = service.getJSeq(bdto.getmSeq());
		bdto.setjSeq(jSeq);
		
		int result = service.add(bdto);
		
		req.setAttribute("prSeq", bdto.getPrSeq());
		req.setAttribute("result", result);
		return "member.siteManage.boardaddok";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/view.action" )
	private String view(HttpServletRequest req, String prSeq, String pbSeq ) {
		
	HttpSession session = req.getSession();
		
		//프로젝트 정보
		ProjectDTO pdto = service.pInfo(prSeq);
		
		String mSeq = ((MemberDTO) session.getAttribute("loginDTO")).getmSeq();
		//내가 개설한 사이트 정보 
		List<ProjectInfoDTO> plist = service.pList(mSeq);
		
		int count = service.jCount(prSeq) ;
		if ( count != 0) {
			List<ProjectJoinDTO> jlist = service.jList(prSeq);
			req.setAttribute("jlist", jlist);
		}
		
		// 게시판 글 내용 가져오기 
		ProjectBoardDTO bdto = service.getView(pbSeq);
		
		//댓글 가져오기 
		List<PbCommentDTO> pbclist = service.pbcList(pbSeq);
		
		req.setAttribute("bdto", bdto);
		req.setAttribute("count", count);
		req.setAttribute("plist", plist);
		req.setAttribute("pdto", pdto);
		req.setAttribute("pbclist", pbclist);
	
		return "member.siteManage.boardview";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/delok.action" )
	private String delok(HttpServletRequest req, String prSeq, String pbSeq ) {

		System.out.println(pbSeq);
		
		// 게시글 삭제하기 
		int result = service.delok(pbSeq);
		
		req.setAttribute("result", result);
		req.setAttribute("prSeq", prSeq);
		
		return "member.siteManage.boarddelok";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/edit.action" )
	private String edit(HttpServletRequest req, String prSeq, String pbSeq ) {
		HttpSession session = req.getSession();
		
		//프로젝트 정보
		ProjectDTO pdto = service.pInfo(prSeq);
		
		String mSeq = ((MemberDTO) session.getAttribute("loginDTO")).getmSeq();
		//내가 개설한 사이트 정보 
		List<ProjectInfoDTO> plist = service.pList(mSeq);
		
		int count = service.jCount(prSeq) ;
		if ( count != 0) {
			List<ProjectJoinDTO> jlist = service.jList(prSeq);
			req.setAttribute("jlist", jlist);
		}
		
		req.setAttribute("count", count);
		req.setAttribute("plist", plist);
		req.setAttribute("pdto", pdto);
		
		System.out.println(pbSeq);
		// 게시판 글 내용 가져오기 
		ProjectBoardDTO bdto = service.getView(pbSeq);
		req.setAttribute("bdto", bdto);	
		System.out.println("rkskdkfjhksd");
		return "member.siteManage.boardedit";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/editok.action" )
	private String editok(HttpServletRequest req, ProjectBoardDTO dto) {
		
		int result = service.edit(dto);
		String prSeq = dto.getPrSeq();
		String pbSeq = dto.getPbSeq();
		
		req.setAttribute("result", result);
		req.setAttribute("prSeq", prSeq);
		req.setAttribute("pbSeq", pbSeq);
		
		return "member.siteManage.boardeditok";
	}
	
	@RequestMapping (method= {RequestMethod.POST}, value="/member/commentadd.action" )
	private String commentadd(HttpServletRequest req, PbCommentDTO cdto) {
		
		cdto.setjSeq(service.getJSeq(cdto.getmSeq()));
		
		int result = service.commentAdd(cdto);
		int pbcSeq = service.getpbcSeq();
		PbCommentDTO pbcdto = service.getpbcdto(pbcSeq);
		
		req.setAttribute("result", result);
		req.setAttribute("pbcdto", pbcdto);
		return "member.siteManage.commentadd.ajax";
	}
	
	@RequestMapping (method= {RequestMethod.GET}, value="/member/commentdel.action" )
	private @ResponseBody Object commentdel(HttpServletRequest req, String pbcSeq) {
		
		int result = service.commentDel(pbcSeq);
		return result;
	}
	
}
