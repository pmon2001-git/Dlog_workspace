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
	Freenote selectFreenote(int fno, int loginUserNo);
	
	// 4. 프리노트 수정용 서비스
	int updateFreenote(Freenote fn);
	
	// 5. 프리노트 삭제용 서비스
	int deleteFreenote(int fno);
	
	// 6. 댓글 조회용 서비스
	int selectReplyListCount(int fno);
	ArrayList<Reply> selectReplyList(int fno, int loginUserNo, PageInfo pi);
	ArrayList<Reply> selectReplyList2(int fno, int loginUserNo);
	
	// 7. 댓글 작성용 서비스
	int insertReply(Reply r);
	
	// 8. 댓글 삭제용 서비스
	int deleteReply(int rno);
	
	// 9. 게시글 좋아요 서비스
	int checkLikePost(Freenote fn);
	int likePost(Freenote fn);
	int dislikePost(Freenote fn);
	
	// 9. 게시글 좋아요 서비스
	int checkLikeReply(Reply r);
	int likeReply(Reply r);
	int dislikeReply(Reply r);

	
	// 커뮤니티
	// 1. 주제별 조회
	int selectCommListCount(String topicName);
	ArrayList<Freenote> selectCommList(String topicName, PageInfo pi);
	
	// 2. 검색 조회
	int selectSearchListCount(SearchCondition sc);
	ArrayList<Freenote> selectSearchList(SearchCondition sc, PageInfo pi);

	
	
}
