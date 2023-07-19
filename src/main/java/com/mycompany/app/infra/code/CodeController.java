package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	/**
	 * @param vo
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		vo.setAgeKeyword(vo.getAgeKeyword() == null ? "" :  vo.getAgeKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Code> list = service.codeSelectList(vo);
			model.addAttribute("list", list);
		}else {
			
		}
		
		return "admin_host/infra/code/codeList";
	}
	
	@RequestMapping(value="/codeForm")
	public String codeForm(CodeVo vo, Model model) throws Exception {
		Code code = service.codeSelectOne(vo);
		
		model.addAttribute("codeItem", code);
		return "admin_host/infra/code/codeForm";
	}
	
	@RequestMapping(value="/codeUpdate")
	public String codeUpadate(Code dto) throws Exception {
		service.codeUpdate(dto);
		
		return "redirect:/codeList";
	}
	
	@RequestMapping(value="/codeInsertPage")
	public ModelAndView codeInsertPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/code/codeInset");
		return mav;
	}
	
	@RequestMapping(value="/codeInsert")
	public String codeInsert(Code dto) throws Exception {
		service.codeInsert(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping(value="codeDelete")
	public String codeDelete(Code dto) throws Exception {
		service.codeDelete(dto);
		
		return "redirect:codeList";
	}
	
	
	@RequestMapping(value="/codeUelete")
	public String codeUelete(Code dto, CodeVo vo, Model model) throws Exception {
		service.codeUelete(dto);
		
		Code code = service.codeSelectOne(vo);
		model.addAttribute("codeItem", code);
		return "admin_host/infra/code/codeForm";
	}
	
	
	
}
