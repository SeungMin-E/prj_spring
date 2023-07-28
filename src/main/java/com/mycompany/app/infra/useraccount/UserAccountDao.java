package com.mycompany.app.infra.useraccount;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserAccountDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	public static final String UPLOAD_PATH_PREFIX_EXTERNAL = "D://factory/ws_sts4_4180/bella/src/main/webapp";
	public static final String UPLOAD_PATH_PREFIX = "D://factory/ws_sts4_4180/bella/src/main/webapp/resources/uploaded";
	public static final String UPLOAD_PATH_PREFIX_FOR_VIEW = "/resources/uploaded";
	
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
	
	public UserAccount loginUserOne(UserAccountVo vo) {
		UserAccount userAccount = sqlSession.selectOne(namespace + ".loginUserOne", vo);
		return userAccount;
	}
	
	public int dulicateI(UserAccountVo vo) {
		return sqlSession.selectOne(namespace + ".dulicateI", vo);
		
	}
	
	public int insertUploaded(UserAccount dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
	
}
