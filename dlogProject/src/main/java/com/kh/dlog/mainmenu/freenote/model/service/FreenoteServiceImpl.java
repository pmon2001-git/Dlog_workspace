package com.kh.dlog.mainmenu.freenote.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.dao.FreenoteDao;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;

@Service
public class FreenoteServiceImpl implements FreenoteService {

	@Autowired
	private FreenoteDao fDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount(int mNo) {
		return fDao.selectListCount(sqlSession, mNo);
	}

	@Override
	public ArrayList<Freenote> selectList(int mNo, PageInfo pi) {
		return fDao.selectList(sqlSession, mNo, pi);
	}

}
