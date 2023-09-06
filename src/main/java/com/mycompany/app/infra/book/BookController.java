package com.mycompany.app.infra.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.app.infra.useraccount.UserAccount;
import com.mycompany.app.infra.useraccount.UserAccountVo;

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
	/**
	 * 
	 * @param dto
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/BookInsert")
	public String BookCreate(Book dto) throws Exception {
		service.bookSingUp(dto);
		return "redirect:/BookListPage";
	}
	
//	이 밑에부터는 유저페이지
	
// 유저 페이지(검색)	
/**
 * 	
 * @return
 */
	@RequestMapping(value="/projectNSA/search")
	public ModelAndView bookSearching() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usr/infra/index/books/bookSearch");
		
		return mav;
	}
	
	
//	결제
	@RequestMapping(value="/projectNSA/checkOut")
	public String checkOut() {
		return "usr/infra/index/myPage/checkOut";
	}
	
//	베스트셀러 페이지

	@RequestMapping(value = "/projectNSA/bestSeller")
	public String nsa_bestSeller() {
		
		return "usr/infra/index/books/best/bestSell";
	}

//	신간 페이지
	@RequestMapping(value = "/projectNSA/newJeans")
	public String nsa_newBooks() {
		return "usr/infra/index/books/newface/newBooks";
	}

//	도서 페이지
	/**
	 * 
	 * @param vo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/projectNSA/internation")
	public String nsa_interBook(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		vo.setBookTitleSearch(vo.getBookTitleSearch() == null ? "" : vo.getBookTitleSearch());
		
		List<Book> list = service.bookAll(vo);
		model.addAttribute("list", list);
		
		return "usr/infra/index/books/inter/internation_book";
	}
	
	
//	도서상세페이지
	/**
	 * 
	 * @param vo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/projectNSA/BookOne")
	public String bookOneInfo(BookVo vo, Model model)throws Exception{
		Book book = service.bookOne(vo);
		model.addAttribute("bookItem", book);
		
		return "usr/infra/index/books/bookinfo";
	}
	
}
