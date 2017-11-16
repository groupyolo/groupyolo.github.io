package com.yol.web.main.front;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQDTO;
import com.yol.web.DTO.FAQTotalDTO;
import com.yol.web.DTO.IncFunctionDTO;

@Service
public class FrontService implements IFrontService{
	
	@Autowired
	private FrontDAO dao;
	

	@Override
	public List<FAQTotalDTO> getFaqMain() {

		return dao.getFaqMain();
	}

	
	@Override
	public List<IncFunctionDTO> getInc() {

		return dao.getInc();
	}
	
}
