package com.yol.web.member.question;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.QcategoryDTO;
import com.yol.web.DTO.QcommentDTO;
import com.yol.web.DTO.QuestionDTO;

@Repository
public class QuestionDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public int add(QuestionDTO dto) {
		
		return sql.insert("question.add",dto);
	}

	public List<QuestionDTO> list(HashMap<String,String> map) {

		return sql.selectList("question.list",map);
	}

	public List<QcategoryDTO> getCategory() {

		return sql.selectList("question.category");
	}

	public QuestionDTO getView(String seq) {

		return sql.selectOne("question.view",seq);
	}

	public int edit(QuestionDTO dto) {
		
		return sql.update("question.edit",dto);
	}

	public int del(String seq) {

		return sql.delete("question.del",seq);
	}

	public int addComment(QcommentDTO dto) {

		return sql.insert("question.addComment",dto);
	}

	public List<QcommentDTO> getComment(String seq) {
		
		return sql.selectList("question.getComment",seq);
	}

	public int delComment(HashMap<String,String> map) {

		return sql.delete("question.delComment",map);
	}

	public int commentUp(String seq) {

		return sql.update("question.commentUp",seq);
	}

	public int commentDown(String seq) {

		return sql.update("question.commentDown",seq);
	}

	public List<QuestionDTO> search(HashMap<String, String> map) {

		return sql.selectList("question.search",map);
	}

	public int qhitsUp(String seq) {

		return sql.update("question.qhitsUp",seq);
	}

	public int delCom(String seq) {

		return sql.delete("question.delCom",seq);
	}

	public int getTotalCount() {

		return sql.selectOne("question.getTotalCount");
	}

	public List<QuestionDTO> qlist() {

		return sql.selectList("question.qlist");
	}

	
	
}
