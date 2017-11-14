package com.yol.web.main.front;

import java.util.List;

import com.yol.web.DTO.FAQTotalDTO;
import com.yol.web.DTO.IncFunctionDTO;

public interface IFrontService {

	List<FAQTotalDTO> getFaqMain();

	List<IncFunctionDTO> getInc();




}
