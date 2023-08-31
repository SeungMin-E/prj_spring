package com.mycompany.app.infra.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	
	@Autowired
	CartServiceImpl service;
	
	@RequestMapping(value="/projectNSA/myCart")
	public String cartList(@ModelAttribute("vo") CartVo vo, Model model) throws Exception{
		vo.setUserSeq(vo.getUserSeq() == null ? "" : vo.getUserSeq());
		vo.setParamsPaging(service.cartCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Cart> list = service.cartSelectList(vo);
			model.addAttribute("list", list);
		}else {
		
		}
		return "usr/infra/index/myPage/myCart";
	}
	
	@RequestMapping(value="/projectNSA/addCart")
	public String addTheCart(Cart dto) throws Exception {
		service.add_cart(dto);
		return "usr/infra/index/myPage/myCart";
	}
	
	@RequestMapping(value="/projectNSA/cartRefresh")
	public String quanChange(Cart dto) throws Exception {
		service.transCart(dto);
		
		return "usr/infra/index/myPage/myCart";
	}
	
	@RequestMapping(value="/projectNSA/cancel")
	public String cartCancel(Cart dto) throws Exception {
		service.cancel(dto);
		
		return "usr/infra/index/myPage/myCart";
	}
}	
