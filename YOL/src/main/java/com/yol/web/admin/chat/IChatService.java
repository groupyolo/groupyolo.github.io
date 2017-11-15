package com.yol.web.admin.chat;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.ChatDTO;

public interface IChatService {

	List<ChatDTO> list();

	List<ChatDTO> view(String mseq);

	int addChat(HashMap<String, String> map);

	int creadUp(String mseq);

	List<ChatDTO> chatView(String seq);

}
