package com.yol.web.community.freeboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.VFBoardDTO;

@Controller
public class FBoardController {

	@Autowired
	private IFBoardService ifb;
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/community/freeboard/boardadd.action")
	public String add(HttpServletRequest req) {

		return "member.boardfree.boardadd";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/community/freeboard/boardaddok.action")
	public String addok(HttpServletRequest req, VFBoardDTO dto) {

		int result = ifb.add(dto);
		req.setAttribute("result", result);
		
		return "member.boardfree.boardaddok";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/community/freeboard/boardlist.action")
	public String boardlist(HttpServletRequest req, VFBoardDTO dto) {
		
		List<VFBoardDTO> list = ifb.list(dto);
		req.setAttribute("fblist", list);
	
		return "member.boardfree.boardlist";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/community/freeboard/boardview.action")
	public String boardview(HttpServletRequest req, String fbSeq) {

		VFBoardDTO vdto = ifb.view(fbSeq);
		req.setAttribute("vdto", vdto);
		
		
		return "member.boardfree.boardview";
	}
}
