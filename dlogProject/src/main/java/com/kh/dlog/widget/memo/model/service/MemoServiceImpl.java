package com.kh.dlog.widget.memo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.widget.memo.model.dao.MemoDao;
import com.kh.dlog.widget.memo.model.vo.Memo;

@Service
public class MemoServiceImpl implements MemoService{
	
	// field
	@Autowired
	private MemoDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	// method
	@Override
	public int insertMemo(Memo m) { // 메모 작성
		return mDao.insertMemo(sqlSession, m);
	}

	@Override
	public int deleteMemo(int[] intNums) { // 메모 삭제
		return mDao.deleteMemo(sqlSession, intNums);
	}
	
	@Override
	public int updateMemo(Memo m) { // 메모 수정
		return mDao.updateMemo(sqlSession, m);
	}

	@Override
	public ArrayList<Memo> selectMemoList(int memoWriter) { // 메모 전체 조회
		return mDao.selectMemoList(sqlSession, memoWriter);
	}

	@Override
	public Memo selectMemoDetail(int memoNo) { // 메모 상세 조회
		return mDao.selectMemoDetail(sqlSession, memoNo);
	}

	@Override
	public int widgetMemoNtoY(Memo m) { // 위젯 여부 변경
		return mDao.widgetMemoNtoY(sqlSession, m);
	}
	
	@Override
	public int widgetMemoAlltoN(int memoWriter) { // 위젯 여부 변경
		return mDao.widgetMemoAlltoN(sqlSession, memoWriter);
	}

	@Override
	public int updateDelete(int memoNo) {
		return mDao.updateDelete(sqlSession, memoNo);
	}

	@Override
	public Memo selectMemoWidget(int memoWriter) {
		return mDao.selectMemoWidget(sqlSession, memoWriter);
	}

	

}
