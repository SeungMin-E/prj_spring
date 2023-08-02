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
		
		return "admin_host/infra/book/bookList";
	}
	
//	책 상세 정보
	@RequestMapping(value="/BookOne")
	public String bookOneForm(BookVo vo, Model model)throws Exception{
		Book book = service.bookOne(vo);
		model.addAttribute("bookItem", book);
		
		return "admin_host/infra/book/bookForm";
	}
	
//	책 정보 업데이트
	@RequestMapping(value="/BookRelese")
	public String bookRelesed(Book dto) throws Exception{
		service.bookRelesed(dto);
		
		return "redirect:/BookListPage";
	}
	
//	책 uelete
	@RequestMapping(value="/BookUele")
	public String bookUelete(Book dto, BookVo vo, Model model) throws Exception {
		service.bookUelete(dto);
		
		Book book = service.bookOne(vo);
		model.addAttribute("item", book);
		
		return "redirect:/BookOne";
	}
	
//	책 uelete 취소
	@RequestMapping(value="/BookNotUele")
	public String bookUeleteCancel(Book dto, BookVo vo, Model model) {
		service.bookUeleteCancel(dto);
		
		return "redirect:/BookOne";
	}
	
//	책 정보 삭제
	@RequestMapping(value="/BookDelete")
	public String BookExcute(Book dto) throws Exception{
		service.bookDel(dto);
		
		return "redirect:/BookListPage";
	}
	
//	책 추가 페이지
	@RequestMapping(value="/BookInsertPage")
	public String bookInsertPage() {
		return "admin_host/infra/book/bookInsert";
	}
	
//	책 추가
	@RequestMapping(value="/BookInsert")
	public String BookCreate(Book dto) throws Exception {
		service.bookSingUp(dto);
		return "redirect:/BookListPage";
	}
	
	
	// 유저 페이지	
	@RequestMapping(value="/projectNSA/search")
	public ModelAndView bookSearching() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/books/bookSearch");
		
		return mav;
	}
	
//	베스트셀러 페이지
	@RequestMapping(value = "/projectNSA/bestSeller")
	public String nsa_bestSeller() {
		
		return "usr/infra/index/books/best/bestSell";
	}

//	화제의신간 페이지
	@RequestMapping(value = "/projectNSA/newJeans")
	public String nsa_newBooks() {
		return "usr/infra/index/books/newface/newBooks";
	}

//	국내도서 페이지
	@RequestMapping(value="/projectNSA/internation")
	public String nsa_interBook(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		vo.setBookTitleSearch(vo.getBookTitleSearch() == null ? "" : vo.getBookTitleSearch());
		
		List<Book> list = service.bookAll(vo);
		model.addAttribute("list", list);
		
		return "usr/infra/index/books/inter/internation_book";
	}
	
// 	해외도서 페이지
	@RequestMapping(value="/projectNSA/global")
	public String nsa_overseasBook() {
		return "usr/infra/index/books/overseas/global_book";
	}
	
}
