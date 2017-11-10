package com.yol.web.member.question;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.SynchronousQueue;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.QcategoryDTO;
import com.yol.web.DTO.QcommentDTO;
import com.yol.web.DTO.QuestionDTO;

@Controller
public class QuestionController {

	@Autowired
	private IQuestionService service;
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/add.action")
	public String add(HttpServletRequest req) {
		
		
		List<QcategoryDTO> list = service.getCategory();
		
		req.setAttribute("list", list);
		
		
		return "member.question.add";
	}
	
	
	@RequestMapping(method = { RequestMethod.POST}, value = "/question/addok.action")
	public String addok(HttpServletRequest req,QuestionDTO dto) {

		HttpSession session = req.getSession();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("loginDTO");
		
		dto.setMseq(loginDTO.getmSeq());
		
		int result = service.add(dto);
		
		req.setAttribute("result", result);
		
		return "member.question.addok";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/list.action")
	public String list(HttpServletRequest req) {
		
		
		List<QuestionDTO> list = service.list();
		
				
		req.setAttribute("list", list);
		
		return "member.question.list";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/view.action")
	public String view(HttpServletRequest req,String questionseq) {
		
		HttpSession session = req.getSession();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("loginDTO");
		
		
		String mSeq = loginDTO.getmSeq();
		String mNickName = loginDTO.getmNickName();
		String seq = questionseq;
		
		// 글 상세내용 가져오기
		QuestionDTO dto = service.getView(seq);
		
		//댓글 목록 가져오기
		List<QcommentDTO> clist = service.getComment(seq);
		
		// 조회수 증가
		service.qhitsUp(seq);
		

		
		req.setAttribute("dto", dto);
		req.setAttribute("clist", clist);
		req.setAttribute("mSeq", mSeq);
		req.setAttribute("mNickName", mNickName);
		
		return "member.question.view";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/edit.action")
	public String edit(HttpServletRequest req, String questionseq) {
		
		
		
		String seq = questionseq;
		QuestionDTO dto = service.getView(seq);
		List<QcategoryDTO> list = service.getCategory();
		
		
		req.setAttribute("dto", dto);
		req.setAttribute("list", list);

		return "member.question.edit";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/question/editok.action")
	public String editok(HttpServletRequest req,QuestionDTO dto) {
		
		int result = service.edit(dto);
		
		String seq = dto.getQuestionseq();
		
		req.setAttribute("result", result);
		req.setAttribute("seq", seq);
		
		return "member.question.editok";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/del.action")
	public String del(HttpServletRequest req, String questionseq) {

		String seq = questionseq;
		
		int result = service.del(seq);
		
		req.setAttribute("result", result);
		
		return "member.question.del";
	}
	
	@RequestMapping(method = { RequestMethod.GET}, value = "/question/addComment.action")
	public @ResponseBody Object addComment(HttpServletRequest req,QcommentDTO dto) {

		HttpSession session = req.getSession();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("loginDTO");
		
		String mSeq = loginDTO.getmSeq();
		
		dto.setMseq(mSeq);
		
		int result = service.addComment(dto);
		String seq = dto.getQuestionseq();
		
		if(result == 1) {
			service.commentUp(seq);
		}
		
		return result;
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/delComment.action")
	public @ResponseBody Object delComment(HttpServletRequest req,String seq,String questionseq) {

		HttpSession session = req.getSession();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("loginDTO");
		
		String mSeq = loginDTO.getmSeq();
		
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("mseq", mSeq);
		map.put("seq", seq);
		
		int result = service.delComment(map);
		
		if(result == 1) {
			service.commentDown(questionseq);
		}
		
		return result;
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/search.action")
	public @ResponseBody Object search(HttpServletRequest req,String word, String category) {

		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("word", word);
		map.put("category", category);
		
		List<QuestionDTO> list = service.search(map);
		
		req.setAttribute("list", list);
		
		
		return list;
	}
	
	
	
}
