package com.yol.web.admin.chat;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.ChatDTO;

@Service
public class ChatService implements IChatService {
	
	@Autowired
	private ChatDAO dao;

	@Override
	public List<ChatDTO> list() {
		
		return dao.list();
	}

	@Override
	public List<ChatDTO> view(String mseq) {
		
		return dao.view(mseq);
	}

	@Override
	public int addChat(HashMap<String, String> map) {

		return dao.addChat(map);
	}

}
