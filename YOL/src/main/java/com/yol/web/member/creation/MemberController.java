package com.yol.web.member.creation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yol.web.DTO.ConceptDTO;
import com.yol.web.DTO.JoinBoardDTO;
import com.yol.web.DTO.MemberDTO;
import com.yol.web.DTO.QuestionDTO;
import com.yol.web.DTO.VCreationDTO;
import com.yol.web.DTO.VFBoardDTO;
import com.yol.web.DTO.VJoinTeamDTO;
import com.yol.web.community.freeboard.IFBoardService;
import com.yol.web.member.joinTeam.IJoinTeamService;
import com.yol.web.member.question.IQuestionService;

@Controller
public class MemberController {

	@Autowired
	private ICreationService ics;
	
	@Autowired
	private IFBoardService ifb;
	
	@Autowired
	private IQuestionService iqs;
	
	@Autowired
	private IJoinTeamService ijs;
	
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/main.action")
	public String main(HttpServletRequest req) {

		return "member";
	}
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/home.action")
	public String home(HttpServletRequest req) {

		
		//	return "member.home";
		return "member.creation.home";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/core_template.action")
	public String test(HttpServletRequest req) {

		//	return "member.home";
		return "member.creation.core_template";
	}
	
	// POST로 바꿀 준비
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/creationstep1.action")
	public String creationstep1(HttpServletRequest req) {

		return "member.creation.creationstep1";
	}
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationstep2.action")
	public String creationstep2(HttpServletRequest req) {

		return "member.creation.creationstep2";
	}
		
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/create.action")
	public String create(HttpServletRequest req) {

		return "member.creation.projectadd";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/createpok.action")
	public String createp(HttpServletRequest req, VCreationDTO dto) {

		int result = ics.creation(dto);
		req.setAttribute("result", result);
		
		return "member.creation.createpok";
	}
	
	@RequestMapping(method = { RequestMethod.POST }, value = "/member/creationok.action")
	public String creationok(HttpServletRequest req, VCreationDTO dto) {
		System.out.println("여기들어옴");
		System.out.println(dto.getjStart());
		System.out.println(dto.getjEnd());
		System.out.println("찍음");
		
		int result = ics.add(dto);
		int prSeq = ics.getPrSeq();
		System.out.println("===========================");
		System.out.println("prSeq  = " + prSeq);
		System.out.println("===========================");
		
		//설정된 템플릿으로 폴더와 파일을 생성하고 파일의 경로를 리턴
		String copy[] = ics.copyTemplate(dto, prSeq);
		//띄어쓰기허용안되는듯
		System.out.println("최종경로는 다음과 같습니다 > ");
		System.out.println(copy[0]+"\\"+copy[1]+"\\"+copy[2]+"\\"+copy[3]);
		System.out.println("==========================");
				
		
		req.setAttribute("result", result);
		
		return "member.creation.creationok";
	}	
	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/addproject.action")
	public String addproject(HttpServletRequest req) {
		
		
		return "member.creation.addproject";
	}
		
	@RequestMapping(method = { RequestMethod.GET }, value = "/membermenu.action")
	public String membermenu(HttpServletRequest req) {

		return "inc.member.membermenu";
	}
	@RequestMapping(method = { RequestMethod.GET }, value = "/membersubmenu.action")
	public String membersubmenu(HttpServletRequest req) {

		return "inc.member.membersubmenu";
	}
	
	//회원페이지
	//나의정보
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/myinfo.action")
	public String myinfo(HttpServletRequest req, HttpSession session) {

		return "member.memberpage.myinfo";
	}
	

	@RequestMapping(method = { RequestMethod.GET }, value = "/member/mysites.action")
	public String mysites(HttpServletRequest req, VCreationDTO dto, HttpSession session) {
		MemberDTO ldto = (MemberDTO)session.getAttribute("loginDTO");
		System.out.println("=============");
		System.out.println(ldto.getmSeq());
		System.out.println("=============");
		List<VCreationDTO> list = ics.list(dto, ldto.getmSeq());
		req.setAttribute("vCreationList", list);
		
		return "member.memberpage.mysites";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/concept.action")
	public String concept(HttpServletRequest req) {

		return "member.creation.concept";
	}
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/community.action")
	public String boardlist(HttpServletRequest req, VFBoardDTO dto) {

		List<VJoinTeamDTO> slist = ijs.slist();
		List<QuestionDTO> qlist = iqs.qlist();
		List<VFBoardDTO> list = ifb.listshort(dto);
		
		for(QuestionDTO qdto : qlist ) {
			
			qdto.setQtime(qdto.getQtime().substring(0,10));
			
		}
		
		req.setAttribute("slist", slist);
		req.setAttribute("qlist", qlist);
		req.setAttribute("fblistshort", list);
		
		return "member.community.boardlist";
	}

	@RequestMapping(method = { RequestMethod.POST }, value = "/member/filewriter.action")
	public String filewriter(HttpServletRequest req, HttpSession session, ConceptDTO dto, VCreationDTO vdto) {
		
		String prFileName = ""+ req.getAttribute("prFileName");
		String prSeq = ""+ req.getAttribute("prSeq");
		
		System.out.println("================");
		System.out.println(prFileName);
		System.out.println(prSeq);
		System.out.println("================");
		
		System.out.println(req.getAttribute("whatda"));
		
		int result = ics.filewrt(dto, vdto);
		
		req.setAttribute("result", result);
		
		return "member.creation.filewriter";
	}

	
	
	@RequestMapping(method = { RequestMethod.GET }, value = "/member/creation/projectedit.action")
	public String projectedit(HttpServletRequest req, int prSeq) {

		String result = ics.projectedit(prSeq);
		result = result.replace(".jsp", "");
		
		String url[] = result.split("\\\\");
		
		
		System.out.println("=======projectedit=======");
		System.out.println(url[0]);
		System.out.println(url[1]);
		System.out.println(url[2]);
		System.out.println(url[3]);
		System.out.println("========================");
		String mapping = url[0]+"."+ url[1] + "." + url[2]+"."+url[3]; 
		System.out.println("매핑된 주소 체크 : " + mapping);
		
		req.setAttribute("prSeq", prSeq);
		req.setAttribute("mapping", mapping);
		
		return mapping ;
		
	}
	
	
}

