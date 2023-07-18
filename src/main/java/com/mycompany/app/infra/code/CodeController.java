package com.mycompany.app.infra.code;

import java.util.List;

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
	 */
	@RequestMapping(value="/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) {
		
		vo.setAgeKeyword(vo.getAgeKeyword() == null ? "" :  vo.getAgeKeyword());
		
		vo.setParamPaing(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Code> list = service.codeSelectList(vo);
			model.addAttribute("list", list);
		}else {
			
		}
		
		return "admin_host/infra/code/codeList";
	}
	
	@RequestMapping(value="/codeForm")
	public String codeForm(CodeVo vo, Model model) {
		Code code = service.codeSelectOne(vo);
		
		model.addAttribute("codeItem", code);
		return "admin_host/infra/code/codeForm";
	}
	
	@RequestMapping(value="/codeUpdate")
	public String codeUpadate(Code dto) {
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
	public String codeInsert(Code dto) {
		service.codeInsert(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping(value="codeDelete")
	public String codeDelete(Code dto) {
		service.codeDelete(dto);
		
		return "redirect:codeList";
	}
	
	
	@RequestMapping(value="/codeUelete")
	public String codeUelete(Code dto, CodeVo vo, Model model) {
		service.codeUelete(dto);
		
		Code code = service.codeSelectOne(vo);
		model.addAttribute("codeItem", code);
		return "admin_host/infra/code/codeForm";
	}
	
}
