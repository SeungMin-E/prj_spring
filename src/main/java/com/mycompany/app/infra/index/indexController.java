package com.mycompany.app.infra.index;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 
 */
@Controller
public class indexController {

	// 메인페이지 - 바이로파지
	@RequestMapping(value = "/")
	public String home() {
		// 아래의 jsp파일 호출
		return "usr/infra/biography/home";
	}

	/**
	 * @return
	 */
	@RequestMapping(value = "/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/workFirsr";
	}

	/**
	 * 인터셉터
	 * 
	 * @return
	 */
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/myPage/login";
	}

//	본질적인 시작(바이오페이지 컨트롤)
	@RequestMapping(value = "/aboutMe")
	public ModelAndView aboutMe() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/aboutMe");

		return mav;
	}

	/**
	 * 
	 * @return
	 */
	@RequestMapping(value = "/service")
	public ModelAndView service() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/service");

		return mav;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/contact");

		return mav;
	}

	@RequestMapping(value = "/work")
	public ModelAndView work() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/work");

		return mav;
	}

	@RequestMapping(value = "/work_one")
	public ModelAndView workFirst() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/workFirsr");

		return mav;
	}

	@RequestMapping(value = "/work_two")
	public ModelAndView workSec() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/biography/workSec");

		return mav;
	}

//	바이오파지 팀프로젝트로 가는길
	@RequestMapping(value = "/teamProject")
	public ModelAndView team_prj() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/usr/index/indexUsrView");
		return mav;
	}

//	바이오그래피 페이지 끝

//	여기부터 project nsa 관리자 페이지

	@RequestMapping(value = "/admin_join")
	public String nsa_admin_login() {
		return "admin_host/infra/index/admin_login";
	}

//	페이지 경로(페이지 카테고리)
	@RequestMapping(value = "/admin_page")
	public String nsa_admin_page() {

		return "admin_host/infra/index/ad_index";
	}

	@RequestMapping(value = "/admin_login")
	public String login_page() {
		return "admin_host/infra/index/page/admin_login_page";
	}

	@RequestMapping(value = "/register")
	public String nsa_admin_register() {
		return "admin_host/infra/index/page/register";
	}

	@RequestMapping(value = "/pwLost")
	public String forget_pw() {
		return "admin_host/infra/index/page/forget_password";
	}

//	영화 인셉션

	@RequestMapping(value = "/smaple_one")
	public String samplePage_404() {
		return "admin_host/infra/index/sp/404";
	}

	@RequestMapping(value = "/sample_two")
	public String samplePage_blank() {
		return "admin_host/infra/index/sp/blank";
	}

//	테이블
	@RequestMapping(value = "/ad_table")
	public String nsa_admin_table() {
		return "admin_host/infra/index/ad_table";
	}

//	차트
	@RequestMapping(value = "/chart")
	public String nsa_admin_chart() {
		return "admin_host/infra/index/charts";
	}

//	인터페이스

//	인터페이스 산하 컴포넌트
	@RequestMapping(value = "/doNotPushMe")
	public String nsa_button() {
		return "admin_host/infra/index/interface/ad_button";
	}

	@RequestMapping(value = "/card_trick")
	public String nsa_acdr() {
		return "admin_host/infra/index/interface/ad_card";
	}

// 인터페이스 산하 유틸리티
	@RequestMapping(value = "/colors")
	public String nsa_color_weakness() {
		return "admin_host/infra/index/interface/ad_color";
	}

	@RequestMapping(value = "/border")
	public ModelAndView nsa_boder() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/interface/ad_border");
		return mav;
	}

	@RequestMapping(value = "/animation")
	public String nsa_ani() {
		return "admin_host/infra/index/interface/ad_animation";
	}

	@RequestMapping(value = "/util-other")
	public ModelAndView nsa_other() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/interface/ad_other");
		return mav;
	}

//	project NSA 관리자 끝

//	project NSA 메인 페이지

	@RequestMapping(value = "/projectNSA/main_page")
	public ModelAndView nsa_userPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/index");
		return mav;
	}

//	로그인
	@RequestMapping(value = "/projectNSA/login")
	public ModelAndView nsa_loginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/myPage/login");
		return mav;
	}

//	Q&A 페이지
	@RequestMapping(value = "/projectNSA/question")
	public ModelAndView nsa_question() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/Q&A");
		return mav;
	}
	
//	review section
	@RequestMapping(value="/projectNSA/reviwe")
	public ModelAndView nsa_review() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/reviwe");
		return mav;
	}
	
//	contact 페이지
	@RequestMapping(value="/projectNSA/contact")
	public ModelAndView nsa_contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/contact");
		return mav;
	}
	
//	기타 페이지
	
//	개인정보처리방침 & 보호정책
	@RequestMapping(value= "/projectNSA/privacypolicy")
	public ModelAndView nsa_privacypolicy() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/sub/privacypolicy");
		return mav;
	}
	
//	이용약관
	@RequestMapping(value="/projectNSA/termsConditions")
	public String nsa_termsConditions(){
		
		return "usr/infra/index/sub/terms&conditions";
	}
	
//	팀프로젝트 페이지
	@RequestMapping(value = "/newParty")
	public ModelAndView team_newParty() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/usr/index/newParty");

		return mav;
	}

	@RequestMapping(value = "/PartyTest")
	public ModelAndView team_test() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("team/usr/index/partyStatus");
		return mav;
	}
	
	
//	api 구간
	@RequestMapping(value="/publicCorona1List")
	public String publicCoronaList(Model model) throws Exception {
		System.out.println("컨트롤러 사용확인");
		
		
		String apiString = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=91VE1ojQLyl8QoxTZ1JYVlCFfPEM3EoL97wPvYYrtxDvzPwJ9stOlWVOwqSy0TPBU%2F%2BsLJJCrmsJfAH7i6LCQA%3D%3D&type=json";
		URL url = new URL(apiString);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		
		ObjectMapper objectMapper = new ObjectMapper();
	      
	      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	      
	      System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			String aaa = (String) header.get("resultCode");
			
			System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
			System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
			
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			
			List<Home> items = new ArrayList<Home>();
			items = (List<Home>) body.get("items");
			
			System.out.println("items.size(): " + items.size());
			
//			for(Home item : items) {
//				System.out.println(item.getMM());
//			}
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			
		
		return "usr/infra/index/publicCoronaList";
	}
}
