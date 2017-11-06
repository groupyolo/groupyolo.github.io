package com.yol.web.member.joinTeam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.JoinBoardDTO;
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
				
		return "member/joinTeam/communityBoard";
	}
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamAdd.action")
	public String boardAdd(HttpServletRequest req) {
		return "member/joinTeam/boardAdd";
	}
	@RequestMapping(method= {RequestMethod.POST},value="/member/joinTeamAddOk.action")
	public String boardAddOk(HttpServletRequest req, JoinBoardDTO dto) {
		
		int result = sv.add(dto);
		
		return "member/joinTeam/boardAddOk";
	}
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamView.action")
	public String boardView(HttpServletRequest req, String reSeq) {
		
		VJoinTeamDTO tdto = sv.getDTO(reSeq);
		req.setAttribute("tdto", tdto);
		
		List<VJoinMemberDTO> mlist = sv.joinList(reSeq);
		req.setAttribute("mlist", mlist);
		
		return "member/joinTeam/boardView";
	}
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/joinTeamEdit.action")
	public String boardEdit(HttpServletRequest req, String reSeq) {
		
		VJoinTeamDTO tdto = sv.getDTO(reSeq);
		req.setAttribute("tdto", tdto);
		
		return "member/joinTeam/boardEdit";
	}
	@RequestMapping(method= {RequestMethod.POST},value="/member/joinTeamEditOk.action")
	public String boardEdit(HttpServletRequest req, JoinBoardDTO dto) {
		
		int result = sv.edit(dto);
		req.setAttribute("result", result);
		req.setAttribute("dto", dto);
		
		return "member/joinTeam/boardEditOk";
	}	
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/teamMaster.action")
	public String masterBoard(HttpServletRequest req, String mSeq) {
		
		List<VJoinTeamDTO> mlist = sv.masterDTO(mSeq);
		req.setAttribute("mlist", mlist);
		
		return "member/joinTeam/masterBoard";
	}
	
}
