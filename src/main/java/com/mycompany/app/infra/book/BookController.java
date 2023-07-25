package com.mycompany.app.infra.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	// 관리자 페이지
	
	@Autowired
	BookServiceImpl service;
	
	@RequestMapping(value="/BookListPage")
	public String bookList(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		vo.setBookTitleSearch(vo.getBookTitleSearch() == null ? "" : vo.getBookTitleSearch());
		
		vo.setParamsPaging(service.bookOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Book> list = service.bookAll(vo);
			model.addAttribute("list", list);
		}else {
			
		}
		
		return "";
	}
	
	@RequestMapping(value="/BookOne")
	public String bookOneForm(BookVo vo, Model model)throws Exception{
		Book book = service.bookOne(vo);
		model.addAttribute("book", book);
		
		return "";
	}
	
	@RequestMapping(value="/BookRelese")
	public String bookRelesed(Book dto) throws Exception{
		service.bookRelesed(dto);
		
		return "redirect:/BookListPage";
	}
	
	@RequestMapping(value="/BookUele")
	public String bookUelete(Book dto, BookVo vo, Model model) throws Exception {
		service.bookUelete(dto);
		
		Book book = service.bookOne(vo);
		model.addAttribute("item", book);
		
		return "";
	}
	
	@RequestMapping(value="/BookNotUele")
	public String bookUeleteCancel(Book dto, BookVo vo, Model model) {
		service.bookUeleteCancel(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/BookDelete")
	public String BookExcute(Book dto) throws Exception{
		service.bookDel(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/BookInsert")
	public String BookCreate(Book dto) throws Exception {
		service.bookSingUp(dto);
		return "";
	}
	// 유저 페이지	
	@RequestMapping(value="/projectNSA/search")
	public ModelAndView bookSearching() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/books/bookSearch");
		
		return mav;
	}
	
}
