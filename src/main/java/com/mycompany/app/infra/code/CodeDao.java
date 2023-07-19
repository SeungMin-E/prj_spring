package com.mycompany.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.code.CodeMapper";
	
	public int selectOneCount(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	public List<Code> codeSelectList(CodeVo vo){
		return sqlSession.selectList(namespace + ".codeSelectList", vo);
	}
	
	public Code codeSelectOne(CodeVo vo) {
		Code code = sqlSession.selectOne(namespace + ".codeSelectOne", vo);
		
		return code;
	}
	
	public int codeInsert(Code dto) {
		return sqlSession.insert(namespace + ".codeInsert", dto);
	}
	
	public int codeDelete(Code dto) {
		return sqlSession.delete(namespace + ".codeDelete", dto);
	}
	
	public int codeUelete(Code dto) {
		return sqlSession.update(namespace + ".codeUelete", dto);
	}
	
	public int codeUpate(Code dto) {
		return sqlSession.update(namespace + ".codeUpdate", dto);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null);
	}
	
	
}
