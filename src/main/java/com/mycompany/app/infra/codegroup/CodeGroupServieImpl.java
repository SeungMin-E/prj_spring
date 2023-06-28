package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServieImpl implements CodeGroupService {
	
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) {
		return dao.selectList(vo);
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int updateOne(CodeGroup dto) {
		return dao.updateOne(dto);
	}

	@Override
	public int deleteOne(CodeGroup dto) {
		return dao.deleteOne(dto);
	}

	@Override
	public int insertOne(CodeGroup dto) {
		return dao.insertOne(dto);
	}

	@Override
	public int uele(CodeGroup dto) {
		return dao.uele(dto);
	}
	
}
