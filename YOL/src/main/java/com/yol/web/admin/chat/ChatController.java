package com.yol.web.admin.chat;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yol.web.DTO.ChatDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.QuestionDTO;

@Controller
public class ChatController {

	@Autowired
	private IChatService service;
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/chat/list.action")
	public String list(HttpServletRequest req) {

		List<ChatDTO> list = service.list();
		
		req.setAttribute("list", list);
		
		return "admin.chat.list";
	}
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/chat/view.action")
	public String view(HttpServletRequest req,String mseq) {

		List<ChatDTO> list = service.view(mseq);
		
		
		
		for(ChatDTO dto : list) {
			
			dto.setCdate(dto.getCdate().substring(0,19));
			
		}
		
		int result = service.creadUp(mseq);
		
		req.setAttribute("list", list);
		req.setAttribute("mseq", mseq);
		
		return "admin.chat.view";
	}
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/chat/addChat.action")
	public @ResponseBody Object addChat(HttpServletRequest req,String ccontent,String mseq) {

		HashMap<String,String> map = new HashMap<String,String>();
		map.put("ccontent", ccontent);
		map.put("mseq", mseq);
		
		System.out.println("ccontent");
		System.out.println("mseq");
		
		int result = service.addChat(map);
		
		return result;
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/chat/chatView.action")
	public @ResponseBody Object chatView(HttpServletRequest req) {

		HttpSession session = req.getSession();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("loginDTO");
		
		String seq = loginDTO.getmSeq();
		
		List<ChatDTO> list = service.chatView(seq);
		
		for (ChatDTO dto : list) {
			dto.setCdate(dto.getCdate().substring(0,19));
		}

		return list;
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/chat/MaddChat.action")
	public @ResponseBody Object MaddChat(HttpServletRequest req,String mseq,String ccontent) {
		
		System.out.println(ccontent);
		System.out.println(mseq);
		
		HashMap<String,String> map = new HashMap<String, String>();
		map.put("mseq", mseq);
		map.put("ccontent", ccontent);
		
		int result = service.MaddChat(map);
		
		return result;
	}
	
	
	
	
	
}
	
	
	
	
