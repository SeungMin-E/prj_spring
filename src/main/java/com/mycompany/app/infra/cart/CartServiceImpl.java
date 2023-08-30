package com.mycompany.app.infra.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDao dao;
	
	@Override
	public List<Cart> cartSelectList(CartVo vo) throws Exception {
		return dao.myCartList(vo);
	}

	@Override
	public int cartCount(CartVo vo) throws Exception {
		return dao.cartCount(vo);
	}

	@Override
	public int add_cart(Cart dto) throws Exception {
		return dao.add_cart(dto);
	}

	@Override
	public int transCart(Cart dto) throws Exception {
		return dao.transCart(dto);
	}

	@Override
	public int cancel(Cart dto) throws Exception {
		return dao.cancel(dto);
	}

}
