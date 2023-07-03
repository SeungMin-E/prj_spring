package com.mycompany.app.infra.codegroup;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value="/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		
		vo.setGetGenkeyword(vo.getGetGenkeyword() == null ? "회원" : vo.getGetGenkeyword());
		
		List<CodeGroup> list = service.selectList(vo);
		
//		왼쪽의 list는 jsp 에서 사용할 변수명
		model.addAttribute("list", list);
//		model.addAttribute("vo",vo);
		
//		System.out.println("nothing say anyone");
		
		return "admin_host/infra/codegroup/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupFrom")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codeGroup = service.selectOne(vo);
		
//		System.out.println("테스트 : " + vo.getGetGenkeyword());
//		System.out.println("테스트 : " + vo.getGenOption());
		
		model.addAttribute("item",codeGroup);
		
		return "admin_host/infra/codegroup/codeGroupFrom";
	}
	
	@RequestMapping(value="/codeGroupUpdate")
	public String codeGroupUpdate(CodeGroup dto) {
		service.updateOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupDelete")
	public String codeGroupDelete(CodeGroup dto) {
		service.deleteOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupCreate")
	public String codeGroupInsert(CodeGroup dto) {
		service.insertOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupuele")
	public String codeGroupUele(CodeGroup dto, CodeGroupVo vo , Model model) {
		service.uele(dto);
		
		
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item",codeGroup);
		
		return "admin_host/infra/codegroup/codeGroupFrom";
	}
	
	@RequestMapping(value="/codeGroupInsert")
	public String codeGroupInsertPage() {
		return "admin_host/infra/codegroup/codeGroupInsert";
	}
	
	
//	카나리아니까 건들지 마세요. (테스트하는데라 말없이 괜히 건들어서서 악성코드나 바이러스 걸려도 나는 모름 )
	@RequestMapping(value="/test_page")
	public ModelAndView test_page() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/ad_index_test");
		return mav;
	}
	
}
