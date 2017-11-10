package com.yol.web.member.question;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.QcategoryDTO;
import com.yol.web.DTO.QcommentDTO;
import com.yol.web.DTO.QuestionDTO;



@Service
public class QuestionService implements IQuestionService {
	

	@Autowired
	private QuestionDAO dao;

	@Override
	public int add(QuestionDTO dto) {
		
		return dao.add(dto);
	}

	@Override
	public List<QuestionDTO> list() {

		return dao.list();
	}

	@Override
	public List<QcategoryDTO> getCategory() {

		return dao.getCategory();
	}

	@Override
	public QuestionDTO getView(String seq) {
		
		return dao.getView(seq);
	}

	@Override
	public int edit(QuestionDTO dto) {

		return dao.edit(dto);
	}

	@Override
	public int del(String seq) {
		
		return dao.del(seq);
	}

	@Override
	public int addComment(QcommentDTO dto) {
		
		return dao.addComment(dto);
	}

	@Override
	public List<QcommentDTO> getComment(String seq) {
		
		return dao.getComment(seq);
	}

	@Override
	public int delComment(HashMap<String,String> map) {
		
		return dao.delComment(map);
	}

	@Override
	public int commentUp(String seq) {
		
		return dao.commentUp(seq);
	}

	@Override
	public int commentDown(String seq) {

		return dao.commentDown(seq);
	}

	@Override
	public List<QuestionDTO> search(HashMap<String, String> map) {

		return dao.search(map);
	}

	@Override
	public int qhitsUp(String seq) {

		return dao.qhitsUp(seq);
		
	}





	

}
