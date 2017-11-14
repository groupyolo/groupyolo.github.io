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

import com.yol.web.DTO.ChatDTO;
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
		
		// 게시판 글 목록 가져오기
		
		
		
		// 페이징
		int nowPage = 1;
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
		
		HashMap<String,String> map = new HashMap<String, String>();
		
		map.put("start", start+"");
		map.put("end", end+"");
		
		//글 목록 가져오기
		List<QuestionDTO> list = service.list(map);
		
		for(QuestionDTO dto : list) {
			
			dto.setQtime(dto.getQtime().substring(0,19));
			
		}
		
		//페이징을 위한 총 게시물 수 가져오기
		totalCount = service.getTotalCount();
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = " <nav><ul class='pagination'>";
		loop = 1;
		
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		//시작 부분 
		if(n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/web/question/list.action?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);
		}
		
		while ( !(loop >blockSize || n > totalPage)) {
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/web/question/list.action?page=%d'>%d</a></li>", n,n);
			}
			loop++;
			n++;
		}
		
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/web/question/list.action?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n);
		}
		
		pagebar += "</ul></nav>";
		
		
				
		req.setAttribute("list", list);
		req.setAttribute("pagebar", pagebar);
		
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
		
		dto.setQtime(dto.getQtime().substring(0,19));
			
		
		//댓글 목록 가져오기
		List<QcommentDTO> clist = service.getComment(seq);
		
		for(QcommentDTO cdto : clist) {
			
			cdto.setQcommenttime(cdto.getQcommenttime().substring(0,19));
			
		}
		
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

		//게시글 댓글 삭제
		int result = service.delCom(seq);
		
		//게시글 삭제
		result = service.del(seq);
		
		System.out.println(result);
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
