package com.yol.web.main.inpuiry;

import java.util.HashMap;
import java.util.List;

import com.yol.web.DTO.InquiryDTO;

public interface IInquiryService {

	List<InquiryDTO> list(HashMap<String, String> map);

	int getTotalCount();

}
