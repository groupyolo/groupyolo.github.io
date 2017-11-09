package com.yol.web.member.question;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.SynchronousQueue;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		return "question/add";
	}
	
	
	@RequestMapping(method = { RequestMethod.POST}, value = "/question/addok.action")
	public String addok(HttpServletRequest req,QuestionDTO dto) {

		System.out.println(req.getParameter("qcategory"));
		System.out.println(req.getParameter("name"));
		
		int result = service.add(dto);
		
		req.setAttribute("result", result);
		
		return "question/addok";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/list.action")
	public String list(HttpServletRequest req) {

		List<QuestionDTO> list = service.list();
		
				
		req.setAttribute("list", list);
		
		return "question/list";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/view.action")
	public String view(HttpServletRequest req,String questionseq) {

		String seq = questionseq;
		
		QuestionDTO dto = service.getView(seq);
		List<QcommentDTO> clist = service.getComment(seq);
		
		req.setAttribute("dto", dto);
		req.setAttribute("clist", clist);
		
		return "question/view";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/edit.action")
	public String edit(HttpServletRequest req, String questionseq) {
		
		String seq = questionseq;
		QuestionDTO dto = service.getView(seq);
		List<QcategoryDTO> list = service.getCategory();
		
		
		req.setAttribute("dto", dto);
		req.setAttribute("list", list);

		return "question/edit";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/question/editok.action")
	public String editok(HttpServletRequest req,QuestionDTO dto) {

		
		int result = service.edit(dto);
		
		String seq = dto.getQuestionseq();
		
		req.setAttribute("result", result);
		req.setAttribute("seq", seq);
		
		return "question/editok";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/del.action")
	public String del(HttpServletRequest req, String questionseq) {

		String seq = questionseq;
		
		int result = service.del(seq);
		
		req.setAttribute("result", result);
		
		return "question/del";
	}
	
	@RequestMapping(method = { RequestMethod.GET}, value = "/question/addComment.action")
	public @ResponseBody Object addComment(HttpServletRequest req,QcommentDTO dto) {

		int result = service.addComment(dto);
		String seq = dto.getQuestionseq();
		
		if(result == 1) {
			result = service.commentUp(seq);
		}
		
		return result;
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/question/delComment.action")
	public @ResponseBody Object delComment(HttpServletRequest req,String seq) {

		int result = service.delComment(seq);
		
		if(result == 1) {
			result = service.commentDown(seq);
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
