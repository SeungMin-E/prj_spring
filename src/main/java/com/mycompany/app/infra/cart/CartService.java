package com.mycompany.app.infra.cart;

import java.util.List;

public interface CartService {

//	장바구니 전체 조회
	public List<Cart> cartSelectList(CartVo vo) throws Exception;
	
//	장바구니 페이징
	public int cartCount(CartVo vo) throws Exception;
	
//	장바구니 추가
	public int add_cart(Cart dto) throws Exception;
	
//	장바구니 변경
	public int transCart(Cart dto) throws Exception;
	
//	장바구니 취소 or 빼기
	public int cancel(Cart dto) throws Exception;
	
}
