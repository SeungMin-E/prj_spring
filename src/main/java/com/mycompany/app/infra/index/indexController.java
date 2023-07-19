package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 */
@Controller
public class indexController {
	
	// 메인페이지 - 바이로파지 
	@RequestMapping(value="/")
	public String home() {
		// 아래의 jsp파일 호출
		return "usr/infra/biography/home";	
	}		

	/**
	 * @return
	 */
	@RequestMapping(value="/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/workFirsr";
	}
	
	
	/**	인터셉터
	 * @return
	 */
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/myPage/login";
	}
	
	
	
	
//	본질적인 시작(바이오페이지 컨트롤)
	@RequestMapping(value= "/aboutMe")
	public ModelAndView aboutMe() {
		ModelAndView mav  = new ModelAndView();
		mav.setViewName("usr/infra/biography/aboutMe");
		
		return mav;
	}
	
	@RequestMapping(value="/service")
	public ModelAndView service() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/service");
		
		return mav;
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/contact");
		
		return mav;
	}
	
	@RequestMapping(value="/work")
	public ModelAndView work() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/work");
		
		return mav;
	}
	
	@RequestMapping(value="/work_one")
	public ModelAndView workFirst() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/workFirsr");
		
		return mav;
	}
	
	@RequestMapping(value="/work_two")
	public ModelAndView workSec() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/workSec");
		
		return mav;
	}
	
//	바이오파지 팀프로젝트로 가는길
	@RequestMapping(value="/teamProject")
	public ModelAndView team_prj() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/usr/index/indexUsrView");
		return mav;
	}

//	바이오그래피 페이지 끝
	
//	여기부터 project nsa 관리자 페이지
	
	@RequestMapping(value="/admin_join")
	public String nsa_admin_login() {
		return "admin_host/infra/index/admin_login";
	}
	
	
//	페이지 경로(페이지 카테고리)
	@RequestMapping(value="/admin_page")
	public String nsa_admin_page() {
		
		return "admin_host/infra/index/ad_index";
	}
	
	@RequestMapping(value="/admin_login")
	public String login_page() {
		return "admin_host/infra/index/page/admin_login_page";
	}
	
	@RequestMapping(value="/register")
	public String nsa_admin_register() {
		return "admin_host/infra/index/page/register";
	}
	
	@RequestMapping(value="/pwLost")
	public String forget_pw() {
		return "admin_host/infra/index/page/forget_password";
	}
	
//	영화 인셉션
	
	@RequestMapping(value="/smaple_one")
	public String samplePage_404() {
		return "admin_host/infra/index/sp/404";
	}
	
	
	@RequestMapping(value="/sample_two")
	public String samplePage_blank() {
		return "admin_host/infra/index/sp/blank";
	}
	
	
	
//	테이블
	@RequestMapping(value="/ad_table")
	public String nsa_admin_table() {
		return "admin_host/infra/index/ad_table";
	}
	
//	차트
	@RequestMapping(value="/chart")
	public String nsa_admin_chart() {
		return "admin_host/infra/index/charts";
	}

//	인터페이스
	
//	인터페이스 산하 컴포넌트
	@RequestMapping(value="/doNotPushMe")
	public String nsa_button() {
		return "admin_host/infra/index/interface/ad_button";
	}
	
	@RequestMapping(value="/card_trick")
	public String nsa_acdr() {
		return "admin_host/infra/index/interface/ad_card";
	}

// 인터페이스 산하 유틸리티
	@RequestMapping(value="/colors")
	public String nsa_color_weakness() {
		return "admin_host/infra/index/interface/ad_color";
	}
	
	@RequestMapping(value="/border")
	public ModelAndView nsa_boder() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/interface/ad_border");
		return mav;
	}
	
	@RequestMapping(value="/animation")
	public String nsa_ani() {
		return "admin_host/infra/index/interface/ad_animation";
	}
	
	@RequestMapping(value="/util-other")
	public ModelAndView nsa_other() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/interface/ad_other");
		return mav;
	}
	
//	project NSA 관리자 끝
	
//	project NSA 메인 페이지
	
	@RequestMapping(value="/projectNSA/main_page")
	public ModelAndView nsa_userPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/index");
		return mav;
	}
	
//	로그인
	@RequestMapping(value="/projectNSA/login")
	public ModelAndView nsa_loginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/myPage/login");
		return mav;
	}
	
//	회원가입
	@RequestMapping(value="/projectNSA/join")
	public ModelAndView nsa_joinPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/myPage/join");
		return mav;
	}
	
//	Q&A 페이지
	@RequestMapping(value="/projectNSA/question")
	public ModelAndView nsa_question() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/Q&A");
		return mav;
	}

//	공지사항 페이지
	@RequestMapping(value="/projectNSA/notice")
	public ModelAndView nsa_notice() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/notice");
		return mav;
	}
	
//	베스트셀러 페이지
	@RequestMapping(value="/projectNSA/bestSeller")
	public String nsa_bestSeller() {
		
		return "usr/infra/index/books/best/bestSell";
	}
	
//	화제의신간 페이지
	@RequestMapping(value="/projectNSA/newJeans")
	public String nsa_newBooks() {
		return "usr/infra/index/books/newface/newBooks";
	}
	
	
//	팀프로젝트 페이지
	@RequestMapping(value="/newParty")
	public ModelAndView team_newParty() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/usr/index/newParty");
		
		return mav;
	}
}
