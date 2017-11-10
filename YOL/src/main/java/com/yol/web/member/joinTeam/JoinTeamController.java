package com.yol.web.member.joinTeam;

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
	public String joinBoard(HttpServletRequest req) {
		
		List<VJoinTeamDTO> list = sv.list();		
		req.setAttribute("list", list);
				
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
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinMemberAdd.action")
	public @ResponseBody Object joinMemberAdd (HttpServletRequest req, JoinDTO dto) {
		
		int result = sv.joinAdd(dto);		
		return result;
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinMemberCancel.action")
	public @ResponseBody Object joinMemberCancel (HttpServletRequest req, JoinDTO dto) {
		
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
	public String approveMember(HttpServletRequest req, String jSeq) {
		
		return "member.joinTeam.approveMember.ajax";
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
