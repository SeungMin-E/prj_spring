package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	// 메인페이지 
	@RequestMapping(value="/")
	public String home() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래의 jsp파일 호출
		return "home";	
	}
	
	// controller로 페이지 이동 감잡기 더미페이지
	@RequestMapping(value="/home2")
	public String home2() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home/home2";	
	}
	
	@RequestMapping(value="/home4")
	public ModelAndView home4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/home2/home4");
		
		return mav;
	}
	
//	@RequestMapping(value="/home4")
//	public String home4() {
//		
//		// 여기에서 서버단에서 필요한 작업을 수행한다.
//		
//		
//		// 아래늬 jsp파일 호출
//		return "app/home2/home4";	
//	}
	
	@RequestMapping(value="/home5")
	public ModelAndView home5() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/tr2/home5");
		// 아래의 jsp파일 호출
		return mav;	
	}
	
//	@RequestMapping(value="/home5")
//	public String home5() {
//		
//		// 여기에서 서버단에서 필요한 작업을 수행한다.
//		
//		
//		// 아래늬 jsp파일 호출
//		return "app/tr2/home5";	
//	}
	
	@RequestMapping(value="/home6")
	public ModelAndView home6() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("app/home/home3/home6");
		return mav;
	}
	
//	@RequestMapping(value="/home6")
//	public String home6() {
//		// 여기에서 서버단에서 필요한 작업을 수행한다.
//		// 아래늬 jsp파일 호출
//		return "app/home/home3/home6";	
//	}
	@RequestMapping(value="/home7")
	public ModelAndView home7() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/tr3/home7");
		
		return mav;
	}
//	@RequestMapping(value="/home7")
//	public String home7() {
//		
//		// 여기에서 서버단에서 필요한 작업을 수행한다.
//		// 아래늬 jsp파일 호출
//		return "app/tr3/home7";	
//	}
	@RequestMapping(value="/home8")
	public String home8() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr4/home08";	
	}
	@RequestMapping(value="/home9")
	public String home9() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/home2/home09";	
	}
	@RequestMapping(value="/home10")
	public String home10() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래늬 jsp파일 호출
		return "app/tr4/home10";	
	}
	
	@RequestMapping(value = "/home3")
	public ModelAndView home3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("app/tr/home3");
		
		return mav;
	}
	
	
//	본질적인 시작(바이오페이지 컨트롤)
	@RequestMapping(value= "/aboutMe")
	public ModelAndView aboutMe() {
		ModelAndView mav  = new ModelAndView();
		mav.setViewName("aboutMe");
		
		return mav;
	}
	
	@RequestMapping(value="/service")
	public ModelAndView service() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("service");
		
		return mav;
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact");
		
		return mav;
	}
	
	@RequestMapping(value="/work")
	public ModelAndView work() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("work");
		
		return mav;
	}
	
	@RequestMapping(value="/work_one")
	public ModelAndView workFirst() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/workInfo/workFirsr");
		
		return mav;
	}
	
	
//	project nsa 관리자 페이지
	
	@RequestMapping(value="projectNSA/admin_join")
	public String nsa_admin() {
		return "app/admin_host/admin_login_page";
	}
	
	@RequestMapping(value="/admin_page")
	public String nsa_admin_page() {
		
		return "app/admin_host/ad_index";
	}
	
	@RequestMapping(value="/ad_table")
	public String nsa_admin_table() {
		return "app/admin_host/ad_table";
	}
	
	@RequestMapping(value="/chart")
	public String nsa_admin_chart() {
		return "app/admin_host/charts";
	}
	
	@RequestMapping(value="/doNotPushMe")
	public String nsa_button() {
		return "app/admin_host/admin_host_interface/ad_button";
	}
	
	@RequestMapping(value="/card_trick")
	public String nsa_acdr() {
		return "app/admin_host/admin_host_interface/ad_card";
	}
	
	@RequestMapping(value="/color_Blindness")
	public String nsa_color_weakness() {
		return "app/admin_host_admin_host_interface/ad_color";
	}
	
}
