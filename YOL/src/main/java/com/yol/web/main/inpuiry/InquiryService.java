package com.yol.web.main.inpuiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yol.web.DTO.InquiryDTO;

@Service
public class InquiryService implements IInquiryService {

	@Autowired
	private InquiryDAO dao;

	@Override
	public List<InquiryDTO> list() {
		
		return dao.list();
	}
}
