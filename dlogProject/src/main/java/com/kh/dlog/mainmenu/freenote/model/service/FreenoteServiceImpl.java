package com.kh.dlog.mainmenu.freenote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.dao.FreenoteDao;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;
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

}
