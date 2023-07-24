package com.mycompany.app.infra.book;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	// 관리자 페이지
	
	
	// 유저 페이지	
	@RequestMapping(value="/projectNSA/search")
	public ModelAndView bookSearching() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/books/bookSearch");
		
		return mav;
	}
	
}
