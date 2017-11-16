package com.yol.web.main.inpuiry;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.InquiryDTO;
import com.yol.web.DTO.QuestionDTO;

@Controller
public class InquiryController {

	@Autowired
	private IInquiryService service;

	@RequestMapping(method = { RequestMethod.GET }, value = "/inquiry/list.action")
	public String list(HttpServletRequest req) {

		// 페이징
		int nowPage = 1;
		int totalCount = 0;
		int pageSize = 15;
		int totalPage = 0;
		int start = 0;
		int end = 0;
		int n = 0;
		int loop = 0;
		int blockSize = 10;

		String page = req.getParameter("page");
		if (page == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(page);

		start = ((nowPage - 1) * pageSize) + 1;
		end = start + pageSize - 1;

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("start", start + "");
		map.put("end", end + "");

		// 게시글 가져오기
		List<InquiryDTO> list = service.list(map);

		for (InquiryDTO dto : list) {

			dto.setEnrolltime(dto.getEnrolltime().substring(0, 19));

		}

		// 페이징을 위한 총 게시물 수 가져오기
		totalCount = service.getTotalCount();

		totalPage = (int) Math.ceil((double) totalCount / pageSize);

		String pagebar = " <nav><ul class='pagination'>";
		loop = 1;

		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		// 시작 부분
		if (n == 1) {
			pagebar += String.format(
					"<li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format(
					"<li><a href='/web/inquiry/list.action?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>",
					n - 1);
		}

		while (!(loop > blockSize || n > totalPage)) {
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/web/inquiry/list.action?page=%d'>%d</a></li>", n, n);
			}
			loop++;
			n++;
		}

		if (n > totalPage) {
			pagebar += String.format(
					"<li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format(
					"<li><a href='/web/inquiry/list.action?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>",
					n);
		}

		pagebar += "</ul></nav>";

		req.setAttribute("list", list);
		req.setAttribute("pagebar", pagebar);

		return "main.inquiry.list";
	}

}
