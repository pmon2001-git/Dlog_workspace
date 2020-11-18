package com.kh.dlog.widget.memo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.widget.memo.model.vo.Memo;

@Repository
public class MemoDao {
	
	public int insertMemo(SqlSessionTemplate sqlSession, Memo m) { // 메모 작성
		return 0;
	}

	public int deleteMemo(SqlSessionTemplate sqlSession, int memoNo) { // 메모 삭제
		return 0;
	}

	public int updateMemo(SqlSessionTemplate sqlSession, Memo m) { // 메모 수정
		return 0;
	}

	public ArrayList<Memo> selectMemoList(SqlSessionTemplate sqlSession, int memoWriter) { // 메모 전체 조회
		return null;
	}

	public Memo selectMemoDetail(SqlSessionTemplate sqlSession, int memoNo) { // 메모 상세 조회
		return null;
	}
	
}
