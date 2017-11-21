package com.yol.web.main.inpuiry;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.InquiryDTO;

@Service
public class InquiryService implements IInquiryService {

	@Autowired
	private InquiryDAO dao;

	@Override
	public List<InquiryDTO> list(HashMap<String, String> map) {
		
		return dao.list(map);
	}

	@Override
	public int getTotalCount() {

		return dao.getTotalCount();
	}
}
