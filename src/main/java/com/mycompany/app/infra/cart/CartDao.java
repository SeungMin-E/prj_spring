package com.mycompany.app.infra.cart;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class CartDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.cart.CartMapper";
	
	public List<Cart> myCartList(CartVo vo){
		return sqlSession.selectList(namespace + ".myCartList", vo);
	}
	
	public int cartCount(CartVo vo) {
		return sqlSession.selectOne(namespace + ".cartCount", vo);
	}
	
	public int add_cart(Cart dto) {
		return sqlSession.insert(namespace + ".add_cart", dto);
	}
	
	public int transCart(Cart dto) {
		return sqlSession.update(namespace + ".transCart", dto);
	}
	
	public int cancel(Cart dto) {
		return sqlSession.delete(namespace + ".cancel", dto);
	}
}
