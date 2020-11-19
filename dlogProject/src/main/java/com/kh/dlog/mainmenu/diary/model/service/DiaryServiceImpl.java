package com.kh.dlog.mainmenu.diary.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.diary.model.dao.DiaryDao;
import com.kh.dlog.mainmenu.diary.model.vo.Diary;

@Service
public class DiaryServiceImpl implements DiaryService{
	
	@Autowired
	private DiaryDao dDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public int selectListCount() {
		
		return dDao.selectListCount(sqlSession);
	}
	

	@Override
	public ArrayList<Diary> selectList(PageInfo pi) {
		return dDao.selectList(sqlSession,pi);
	}

	@Override
	public int insertDiary(Diary d) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Diary detailDiary(int dno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateDiary(Diary d) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteDiary(int dno) {
		// TODO Auto-generated method stub
		return 0;
	}

	}
