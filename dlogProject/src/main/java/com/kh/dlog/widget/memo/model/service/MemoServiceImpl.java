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
		return 0;
	}

	@Override
	public int deleteMemo(int memoNo) { // 메모 삭제
		return 0;
	}

	@Override
	public int updateMemo(Memo m) { // 메모 수정
		return 0;
	}

	@Override
	public ArrayList<Memo> selectMemoList(int memoWriter) { // 메모 전체 조회
		return null;
	}

	@Override
	public Memo selectMemoDetail(int memoNo) { // 메모 상세 조회
		return null;
	}

}
