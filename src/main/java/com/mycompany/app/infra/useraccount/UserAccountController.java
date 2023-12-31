package com.mycompany.app.infra.useraccount;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAccountController {
	
	@Autowired
	UserAccountServiceImpl service;
	
	@Autowired
	KakaoAPI kakao;
	
//	목록
	@RequestMapping(value="/userList")
	public String userAccountList(@ModelAttribute("vo") UserAccountVo vo, Model model) {
		
		vo.setUserNameWord(vo.getUserNameWord() == null ? "" : vo.getUserNameWord());
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<UserAccount> list = service.userAll(vo);
			model.addAttribute("list",list);
		}else {
			
		}
		return "admin_host/infra/member/memberList";
	}
	
//	상세
	@RequestMapping(value="/userOne")
	public String userDec(UserAccountVo vo, Model model) {
		UserAccount userAccount = service.userOne(vo);
		
		model.addAttribute("user", userAccount);
		
		return "admin_host/infra/member/member";
	}
	
//	정보변경
	@RequestMapping(value="/userUpdate")
	public String userUpdate(UserAccount dto) {
		service.userUpdate(dto);
		
		return "redirect:/memberList";
	}
	
//	유저삭제
	@RequestMapping(value="/userDelete")
	public String userCutting(UserAccount dto) {
		service.userCut(dto);
		
		return "admin_host/infra/member/memberList";
	}
	
//	유저 삭제 상태
	@RequestMapping(value="/userUele")
	public String userUele(UserAccount dto, UserAccountVo vo, Model model) {
		service.userUelete(dto);
		
		UserAccount userAccount = service.userOne(vo);
		model.addAttribute("user", userAccount);
		return "admin_host/infra/member/member";
	}
	
//	회원가입

	//	관리자용 유저 추가 페이지(관리팀 및 직원 계정 생성용)
	@RequestMapping(value="/newChallgerPage")
	public ModelAndView userJoinPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/member/memberInsert");
		return mav;
	}

	//	뉴챌린저 - 철권아니고 그냥 새로운 회원(관리자용)
	@RequestMapping(value="/newChallger")
	public String userJoin(UserAccount dto) {
		service.userJoin(dto);
		
		return "redirect:/userList";
	}
	
// 난입하는 회원(유저용)
	@RequestMapping(value="/getReadyForTheNextBattle")
	public String onlyUserJoin(UserAccount dto) {
		service.userJoin(dto);
		
		return "redirect:/projectNSA/main_page";
	}
	
//	ID중복 체크
	@ResponseBody
	@RequestMapping(value="/duplicate")
	public Map<String, Object> dualP(UserAccountVo vo){
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int du = service.dulicateI(vo);
		
		if(du == 0) {
			returnMap.put("du", "available");
		}else {
			returnMap.put("du", "unavailable");
		}
		return returnMap;
	}
	
	
//	로그인
	@ResponseBody
	@RequestMapping(value="/loginP")
	public Map<String, Object> loginP(UserAccountVo vo, HttpSession httpSession){ 
		Map<String, Object> returnMap = new HashMap<String, Object>();
	
		UserAccount rtUserAccount = service.loginUserOne(vo);
		
		if(rtUserAccount != null) {
			httpSession.setMaxInactiveInterval(60*60);
			httpSession.setAttribute("sessionId", vo.getUserID());
			httpSession.setAttribute("sessionSeq", rtUserAccount.getSeq());
			
			returnMap.put("rtUserAccount", rtUserAccount);
			returnMap.put("rt", "success");
		}else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
// 로그아웃
	@ResponseBody
	@RequestMapping(value="/logOutP")
	public Map<String, Object> logoutuser(HttpSession httpSession){
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
	
//	kakao API
	@RequestMapping(value="/kakaologin")
	public String login(@RequestParam("code") String code, HttpSession session) {
		System.out.println("code : " + code);
		
		 String access_Token = kakao.getAccessToken(code);
	        System.out.println("access_Token : " + access_Token);

	        HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	        System.out.println("login Controller : " + userInfo);

	        //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	        if (userInfo.get("nickname") != null) {
	        	session.setMaxInactiveInterval(60*10);
	            session.setAttribute("userId", userInfo.get("nickname"));
	            session.setAttribute("access_Token", access_Token);
	            session.setAttribute("userProfile", userInfo.get("userProfile"));
	            session.setAttribute("sessionId", userInfo.get("nickname"));
	        }

		
		return "redirect:/projectNSA/main_page";
	}
	
	@RequestMapping(value="/kakaologout")
    public String logout(HttpSession session) {
        String access_Token = (String)session.getAttribute("access_Token");

        if(access_Token != null && !"".equals(access_Token)){
            kakao.kakaoLogout(access_Token);
            session.removeAttribute("access_Token");
            session.removeAttribute("userId");
        }else{
            System.out.println("access_Token is null");
            //return "redirect:/";
        }
        //return "index";
        return "redirect:/";
    }

	
//	마이페이지
	@RequestMapping(value="/Project/mypage")
	public String myPage(UserAccountVo vo, Model model) {
		
		UserAccount userAccount = service.userOne(vo);
		
		model.addAttribute("user", userAccount);
		
		return "usr/infra/index/myPage/myPage";
	}
	
//	위시리스트
	@RequestMapping(value="/Project/myWish")
	public String wish() {
		
		return "usr/infra/index/myPage/myKeep";
	}
	
//	장바구니
	
//	결제
	
	
	
}
