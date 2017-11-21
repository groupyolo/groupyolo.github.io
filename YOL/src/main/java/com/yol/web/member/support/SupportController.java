package com.yol.web.member.support;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.FAQCategoryDTO;
import com.yol.web.DTO.FAQTotalDTO;
import com.yol.web.DTO.InquiryDTO;
import com.yol.web.main.faq.IFaqService;
import com.yol.web.main.inpuiry.IInquiryService;

@Controller
public class SupportController {
	
	@Autowired
	private IFaqService service;
	
	@Autowired
	private IInquiryService iservice;
	
	/*@RequestMapping(method= {RequestMethod.GET},value="/member/faqview.action")
	public String faqview(HttpServletRequest req) {
		return "return:/main/faqview.action";
	}*/
	
	@RequestMapping(method= {RequestMethod.GET},value="/member/faqview.action" )
	  public String faqView(HttpServletRequest req, String search) throws UnsupportedEncodingException {
		  
		  req.setCharacterEncoding("UTF-8");
		  String isSearch = "y";
		  if(search==null || search.equals("")){
			  isSearch="n";
		  }
		  
		  HashMap<String, String> map = new HashMap<String, String>();
		  
		  map.put("isSearch", isSearch);
		  map.put("search", search);
		  
		  // 그냥 뷰로 만들어서 한번에 하는 걸로 고치기.
		  List<FAQCategoryDTO> categoryList = service.getCategory();
		  List<FAQTotalDTO> faqList = service.getFAQ(map);
		  
		  req.setAttribute("categoryList", categoryList);
		  req.setAttribute("faqList", faqList);
		  
		  return "member.support.faqview";
		  
	  }
	
		@RequestMapping(method = { RequestMethod.GET }, value = "/member/inquirylist.action")
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
			List<InquiryDTO> list = iservice.list(map);
	
			for (InquiryDTO dto : list) {
	
				dto.setEnrolltime(dto.getEnrolltime().substring(0, 19));
	
			}
	
			// 페이징을 위한 총 게시물 수 가져오기
			totalCount = iservice.getTotalCount();
	
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
	
			return "member.support.list";
		}
	
}
