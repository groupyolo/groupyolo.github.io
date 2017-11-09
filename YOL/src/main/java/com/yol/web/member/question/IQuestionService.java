package com.yol.web.member.question;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.QcategoryDTO;
import com.yol.web.DTO.QcommentDTO;
import com.yol.web.DTO.QuestionDTO;

public interface IQuestionService {

	int add(QuestionDTO dto);

	List<QuestionDTO> list();

	List<QcategoryDTO> getCategory();

	QuestionDTO getView(String seq);

	int edit(QuestionDTO dto);

	int del(String seq);

	int addComment(QcommentDTO dto);

	List<QcommentDTO> getComment(String seq);

	int delComment(String seq);

	int commentUp(String seq);

	int commentDown(String seq);

	List<QuestionDTO> search(HashMap<String, String> map);

}
