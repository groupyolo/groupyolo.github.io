package com.yol.web.member.joinTeam;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.JoinDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.VJoinMemberDTO;
import com.yol.web.DTO.VJoinTeamDTO;

@Controller
public class JoinTeamController {
	
	@Autowired
	private IJoinTeamService sv;
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/communityBoard.action")
	public String joinBoard(HttpServletRequest req, String column, String word) {
		
		String isSearch = "n";
		 		
 		if (column != null && word != null) isSearch="y";
 		
 		HashMap<String,String> map = new HashMap<String, String>();
 		map.put("column", column);
 		map.put("word", word);
 		map.put("isSearch", isSearch);		
 		
 		int nowPage = 0;
 		int totalCount = 0;
 		int pageSize = 15;
 		int totalPage = 0;
 		int start = 0;
 		int end = 0;
 		int n = 0;
 		int loop = 0;
 		int blockSize = 10;
 		
 		
 		String page = req.getParameter("page");
 		if (page == null) nowPage = 1;
 		else nowPage = Integer.parseInt(page);
 		
 		start = ((nowPage - 1) * pageSize) + 1;
 		end = start + pageSize - 1;
 		
 		map.put("start", start+"");
 		map.put("end", end+"");
		
		
		List<VJoinTeamDTO> list = sv.list(map);		
				
		totalCount = sv.getTotalCount(map);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		 
		 String pagebar = " <nav><ul class='pagination'>";
		 loop = 1;
		 
		 n = ((nowPage - 1) / blockSize) * blockSize + 1;
		 //시작 부분 
		 if(n == 1) {
		 	pagebar += String.format("<li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		 } else {
		 	pagebar += String.format("<li><a href='/web/member/communityBoard.action?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);
		 }
		 
		 while ( !(loop >blockSize || n > totalPage)) {
		 	if (n == nowPage) {
		 		pagebar += String.format("<li class='active'><a href='#' class='page'>%d</a></li>", n);
		 	} else {
		 		pagebar += String.format("<li><a href='/web/member/communityBoard.action?page=%d'>%d</a></li>", n);
		 	}
		 	loop++;
		 	n++;
		 }
		 
		 if (n > totalPage) {
		 	pagebar += String.format("<li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		 } else {
		 	pagebar += String.format("<li><a href='/web/member/communityBoard.action?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n, n-1);
		 }		 
		 pagebar += "</ul></nav>";
		
		 req.setAttribute("list", list);
		 req.setAttribute("map", map);
		 req.setAttribute("pagebar", pagebar);
		 
		 
		 return "member.joinTeam.communityBoard";
	}
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamAdd.action")
	public String boardAdd(HttpServletRequest req) {
		return "member.joinTeam.boardAdd";
	}
	@RequestMapping(method= {RequestMethod.POST},value="/member/joinTeamAddOk.action")
	public String boardAddOk(HttpServletRequest req, JoinBoardDTO dto) {
		
		int result = sv.add(dto);
		req.setAttribute("result", result);
		
		return "member.joinTeam.boardAddOk";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamView.action")
	public String boardView(HttpServletRequest req, String reSeq) {
		
		VJoinTeamDTO tdto = sv.getDTO(reSeq);
		req.setAttribute("tdto", tdto);
		
		List<VJoinMemberDTO> mlist = sv.joinList(reSeq);
		req.setAttribute("mlist", mlist);
		
		return "member.joinTeam.boardView";
	}
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamEdit.action")
	public String boardEdit(HttpServletRequest req, String reSeq) {
		
		VJoinTeamDTO tdto = sv.getDTO(reSeq);
		req.setAttribute("tdto", tdto);
		
		return "member.joinTeam.boardEdit";
	}
	@RequestMapping(method= {RequestMethod.POST},value="/member/joinTeamEditOk.action")
	public String boardEdit(HttpServletRequest req, JoinBoardDTO dto) {
		
		int result = sv.edit(dto);
		req.setAttribute("result", result);
		req.setAttribute("dto", dto);
		
		return "member.joinTeam.boardEditOk";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamDel.action")
	public String boardDel(HttpServletRequest req, String reSeq) {
		int result = sv.del(reSeq);
		req.setAttribute("result", result);
		return "member.joinTeam.boardDelOk";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinMemberAdd.action")
	public @ResponseBody Object joinMemberAdd (HttpServletRequest req, JoinDTO dto) {
		
		int result = sv.joinAdd(dto);		
		return result;
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinMemberCancle.action")
	public @ResponseBody Object joinMemberCancle (HttpServletRequest req, JoinDTO dto) {
		System.out.println("mSeq" + dto.getmSeq());
		System.out.println("apSeq" + dto.getApSeq());
		int result = sv.joinCancle(dto);		
		return result;
	}
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/teamMaster.action")
	public String masterBoard(HttpServletRequest req, String mSeq) {
		
		List<VJoinTeamDTO> tlist = sv.masterDTO(mSeq);
		req.setAttribute("tlist", tlist);
		
		return "member.joinTeam.masterBoard";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/teamMasterMember.action")
	public String masterBoardMember(HttpServletRequest req, String reSeq) {
		
		List<VJoinMemberDTO> mlist = sv.joinList(reSeq);
		req.setAttribute("mlist", mlist);
		
		return "member.joinTeam.masterBoardMember.ajax";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/approveMember.action")
	public @ResponseBody Object approveMember(HttpServletRequest req, JoinDTO dto) {
		System.out.println(dto.getmSeq());
		System.out.println(dto.getReSeq());
		int result = sv.approveM(dto);
		//return "member.joinTeam.approveMember.ajax";
		return result;
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/rejectMember.action")
	public @ResponseBody Object rejectMember(HttpServletRequest req, JoinDTO dto) {
				
		int result = sv.rejectM(dto);
		//req.setAttribute("result", result);
		//System.out.println("결과: " + result);
		//return "member/joinTeam@/rejectMember";
		return result;
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/member/searchMember.action")
	public String searchMember(HttpServletRequest req, String mEmail) {
		MemberDTO mdto = sv.searchM(mEmail);
		req.setAttribute("mdto", mdto);
		
		return "member.joinTeam.searchMember.ajax";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/addMember.action")
	public @ResponseBody Object addMember(HttpServletRequest req, String mEmail, String reSeq) {
				
		int result = sv.addM(mEmail, reSeq);		
		return result;
	}
	
}
