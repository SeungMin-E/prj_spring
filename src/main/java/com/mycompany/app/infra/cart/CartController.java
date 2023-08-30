package com.mycompany.app.infra.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	
	@Autowired
	CartServiceImpl service;
	
	@RequestMapping(value="/")
	public String myCartList(@ModelAttribute("vo") CartVo vo, Model model) throws Exception{
		
		
		return "";
	}
}
