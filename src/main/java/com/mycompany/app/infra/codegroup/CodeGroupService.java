package com.mycompany.app.infra.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList(CodeGroupVo vo);
	
	public CodeGroup selectOne(CodeGroupVo vo);
	
	public int updateOne(CodeGroup dto);
	
	public int deleteOne(CodeGroup dto);
	
	public int insertOne(CodeGroup dto);
	
	public int uele(CodeGroup dto);
	
	public int selectOneCount(CodeGroupVo vo);
	
}
