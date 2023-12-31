package com.mycompany.app.infra.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.infra.code.Code;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	                                   
	private static String namespace = "com.mycompany.app.infra.codegroup.CodeGroupMapper";
	
	public int selectOneCount(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo);
		
		return codeGroup;
	}
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}

	public int updateOne(CodeGroup dto) {return sqlSession.update(namespace + ".updateOne", dto);}
	
	public int deleteOne(CodeGroup dto) {return sqlSession.delete(namespace + ".deleteOne", dto);}
	
	public int uele(CodeGroup dto) {
		return sqlSession.update(namespace + ".uele", dto);
	}
	
	public int insertOne(CodeGroup dto) {
		 return sqlSession.insert(namespace + ".insertOne", dto);
	}
	
//	for cache
	public List<CodeGroup> selectListCachedCodeGroupArrayList(){
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null);
	}

	
}
