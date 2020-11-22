package com.kh.dlog.mainmenu.freenote.model.service;

import java.util.ArrayList;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;
import com.kh.dlog.mainmenu.freenote.model.vo.Reply;
import com.kh.dlog.mainmenu.freenote.model.vo.SearchCondition;

public interface FreenoteService {
	
	// 프리노트
	// 1. 프리노트 목록 조회용 서비스
	int selectListCount(SearchCondition sc);
	ArrayList<Freenote> selectList(SearchCondition sc, PageInfo pi);
	ArrayList<String> selectCategory(int mno);
	
	// 2. 프리노트 작성용 서비스
	int insertFreenote(Freenote fn);
	
	// 3. 프리노트 조회용 서비스
	int increaseCount(int fno);
	Freenote selectFreenote(int fno);
	
	// 4. 프리노트 수정용 서비스
	int updateFreenote(Freenote fn);
	
	// 5. 프리노트 삭제용 서비스
	int deleteFreenote(int fno);
	
	// 6. 댓글 조회용 서비스
	ArrayList<Reply> selectReplyList(int fno);
	
	// 커뮤니티
	// 1. 주제별 조회
	int selectCommListCount(String topicName);
	ArrayList<Freenote> selectCommList(String topicName, PageInfo pi);
	
	// 2. 검색 조회
	int selectSearchListCount(SearchCondition sc);
	ArrayList<Freenote> selectSearchList(SearchCondition sc, PageInfo pi);
	
	
}
