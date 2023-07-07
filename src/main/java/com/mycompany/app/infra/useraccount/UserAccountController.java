package com.mycompany.app.infra.useraccount;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAccountController {
	
	@Autowired
	UserAccountServiceImpl service;
	
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
	public String userUele(UserAccount dto) {
		service.userUelete(dto);
		
		return "admin_host/infra/member/member";
	}
	
//	회원가입
	@RequestMapping(value="/newChallger")
	public String userJoin(UserAccount dto) {
		service.userJoin(dto);
		
		return "admin_host/infra/member/member";
	}
	
	@RequestMapping(value="/newChallgerPage")
	public ModelAndView userJoinPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/member/memberInsert");
		return mav;
	}
}
