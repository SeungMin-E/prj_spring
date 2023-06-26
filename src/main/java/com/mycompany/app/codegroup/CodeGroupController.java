package com.mycompany.app.codegroup;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServieImpl service;
	
	@RequestMapping(value="/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		
		vo.getGenOption();
		vo.getGetGenkeyword();
		
		System.out.println("cotroller : vo.option: " + vo.getGenOption());
		System.out.println("cotroller : vo.ketword: " + vo.getGetGenkeyword());
		
		List<CodeGroup> list = service.selectList(vo);
		
//		왼쪽의 list는 jsp 에서 사용할 변수명
		model.addAttribute("list", list);
		
//		System.out.println("nothing say anyone");
		
		return "codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupFrom")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codeGroup = service.selectOne(vo);
		
		System.out.println("테스트 : " + vo.getGetGenkeyword());
		System.out.println("테스트 : " + vo.getGenOption());
		
		model.addAttribute("item",codeGroup);
		
		return "codeGroupFrom";
	}
}
