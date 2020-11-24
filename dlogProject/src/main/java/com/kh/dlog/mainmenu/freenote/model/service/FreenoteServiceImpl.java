package com.kh.dlog.mainmenu.freenote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.dao.FreenoteDao;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;
import com.kh.dlog.mainmenu.freenote.model.vo.Reply;
import com.kh.dlog.mainmenu.freenote.model.vo.SearchCondition;

@Service
public class FreenoteServiceImpl implements FreenoteService {

	@Autowired
	private FreenoteDao fDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount(SearchCondition sc) {
		return fDao.selectListCount(sqlSession, sc);
	}

	@Override
	public ArrayList<Freenote> selectList(SearchCondition sc, PageInfo pi) {
		return fDao.selectList(sqlSession, sc, pi);
	}

	@Override
	public ArrayList<String> selectCategory(int mno) {
		return fDao.selectCategory(sqlSession, mno);
	}

	@Override
	public int insertFreenote(Freenote fn) {
		return fDao.insertFreenote(sqlSession, fn);
	}
	
	@Override
	public int increaseCount(int fno) {
		return fDao.increaseCount(sqlSession, fno);
	}

	@Override
	public Freenote selectFreenote(int fno) {
		return fDao.selectFreenote(sqlSession, fno);
	}

	@Override
	public int updateFreenote(Freenote fn) {
		return fDao.updateFreenote(sqlSession, fn);
	}

	@Override
	public int deleteFreenote(int fno) {
		return fDao.deleteFreenote(sqlSession, fno);
	}

	@Override
	public int selectCommListCount(String topicName) {
		return fDao.selectCommListCount(sqlSession, topicName);
	}

	@Override
	public ArrayList<Freenote> selectCommList(String topicName, PageInfo pi) {
		return fDao.selectCommList(sqlSession, topicName, pi);
	}

	@Override
	public int selectSearchListCount(SearchCondition sc) {
		return fDao.selectSearchListCount(sqlSession, sc);
	}

	@Override
	public ArrayList<Freenote> selectSearchList(SearchCondition sc, PageInfo pi) {
		return fDao.selectSearchList(sqlSession, sc, pi);
	}
	
	@Override
	public int selectReplyListCount(int fno) {
		return fDao.selectReplyListCount(sqlSession, fno);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int fno, PageInfo pi) {
		return fDao.selectReplyList(sqlSession, fno, pi);
	}

	@Override
	public ArrayList<Reply> selectReplyList2(int fno) {
		return fDao.selectReplyList2(sqlSession, fno);
	}

	@Override
	public int insertReply(Reply r) {
		return fDao.insertReply(sqlSession, r);
	}

	@Override
	public int deleteReply(int rno) {
		return fDao.deleteReply(sqlSession, rno);
	}

}
