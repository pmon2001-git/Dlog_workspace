package com.kh.dlog.widget.dday.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.widget.dday.model.dao.DdayDao;
import com.kh.dlog.widget.dday.model.vo.Dday;
import com.kh.dlog.widget.dday.model.vo.WidgetCheck;

@Service
public class DdayServiceImpl implements DdayService{
	
	@Autowired
	private DdayDao dDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Dday> ddayMain(String memberNo) {
		// TODO Auto-generated method stub
		return dDao.ddayMain(sqlSession, memberNo);
	}

	@Override
	public int ddayCount(String memberNo) {
		// TODO Auto-generated method stub
		return dDao.ddayCount(sqlSession, memberNo);
	}
	
	@Override
	public int insertDday(Dday d) {
		// TODO Auto-generated method stub
		return dDao.insertDday(sqlSession, d);
	}

	@Override
	public int updateDday(Dday d) {
		// TODO Auto-generated method stub
		return dDao.updateDday(sqlSession, d);
	}

	@Override
	public int deleteDday(String[] deleteDday) {
		// TODO Auto-generated method stub
		return dDao.deleteDday(sqlSession, deleteDday);
	}

	@Override
	public int widgetDday(WidgetCheck wc, String[] dlist) {
		// TODO Auto-generated method stub
		return dDao.widgetDday(sqlSession, wc, dlist);
	}


}
