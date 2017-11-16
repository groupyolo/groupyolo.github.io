package com.yol.web.admin.chat;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.ChatDTO;

@Repository
public class ChatDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<ChatDTO> list() {

		return sql.selectList("chat.list");
	}

	public List<ChatDTO> view(String mseq) {

		return sql.selectList("chat.view",mseq);
	}

	public int addChat(HashMap<String, String> map) {

		return sql.insert("chat.addChat",map);
	}

	public int creadUp(String mseq) {

		return sql.update("chat.creadUp",mseq);
	}

	public List<ChatDTO> chatView(String seq) {

		return sql.selectList("chat.chatView",seq);
	}
	
}
