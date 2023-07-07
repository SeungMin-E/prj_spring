package com.mycompany.app.infra.useraccount;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserAccountDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.useraccount.UserAccountMapper";
	
	public int selectOneCount(UserAccountVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<UserAccount> userAll(UserAccountVo vo){
		return sqlSession.selectList(namespace + ".userAll", vo);
	}
	
	public UserAccount userOne(UserAccountVo vo) {
		UserAccount userAccount = sqlSession.selectOne(namespace + ".userOne", vo);
		
		return userAccount;
	}
	
	public int userJoin(UserAccount dto) {
		return sqlSession.insert(namespace + ".userJoin", dto);
	}
	
	public int userUpdate(UserAccount dto) {
		return sqlSession.update(namespace + ".userUpdate", dto);
	}
	
	public int userUelete(UserAccount dto) {
		return sqlSession.update(namespace + ".userUelete", dto);
	}
	
	public int userCut(UserAccount dto) {
		return sqlSession.delete(namespace + ".userCut", dto);
	}
	
}
