package com.mycompany.app.infra.noticeBoard;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeBoardDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.noticeBoard.NoticeBoardMapper";
	
	public int selectOneCount(NoticeBoardVo vo) {
		return sqlSession.selectOne(namespace+ ".noticeOneCount", vo);
	}
	
	public List<NoticeBoard> selectList(NoticeBoardVo vo){
		return sqlSession.selectList(namespace + ".noticeList", vo);
	}
	
	public NoticeBoard selectOne(NoticeBoardVo vo) {
		NoticeBoard noticeBoard = sqlSession.selectOne(namespace + ".noticeMe", vo);
		return noticeBoard;
	}
	
	public int insertOne(NoticeBoard dto) {
		return sqlSession.insert(namespace + ".newNotice", dto);
	}
	
	public int updateOne(NoticeBoard dto) {
		return sqlSession.update(namespace + ".noticeUpdate", dto);
	}
	
	public int deleteOne(NoticeBoard dto) {
		return sqlSession.delete(namespace + ".cancel", dto);
	}
}
