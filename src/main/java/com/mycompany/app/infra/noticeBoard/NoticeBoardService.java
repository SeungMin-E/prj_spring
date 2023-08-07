package com.mycompany.app.infra.noticeBoard;

import java.util.List;

public interface NoticeBoardService {
	
	public List<NoticeBoard> selectList(NoticeBoardVo vo);
	
	public NoticeBoard selectOne(NoticeBoardVo vo);
	
	public int selectOneCount(NoticeBoardVo vo);
	
	public int updateOne(NoticeBoard dto);
	
	public int insertOne(NoticeBoard dto);
	
	public int deleteOne(NoticeBoard dto);
	
}
