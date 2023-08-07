package com.mycompany.app.infra.noticeBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {
	
	@Autowired
	NoticeBoardDao dao;
	
	@Override
	public List<NoticeBoard> selectList(NoticeBoardVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public NoticeBoard selectOne(NoticeBoardVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(NoticeBoardVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public int updateOne(NoticeBoard dto) {
		return dao.updateOne(dto);
	}

	@Override
	public int insertOne(NoticeBoard dto) {
		return dao.insertOne(dto);
	}

	@Override
	public int deleteOne(NoticeBoard dto) {
		return dao.deleteOne(dto);
	}

}
