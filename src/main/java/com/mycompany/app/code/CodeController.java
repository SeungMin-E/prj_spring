package com.mycompany.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value="/codeList")
	public String codeList(Model model){
		
		List<Code> list = service.selectList2();
		
		model.addAttribute("list", list);
		return "codeList";
	}
}
