package com.kh.dlog.widget.memo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.widget.memo.model.vo.Memo;

@Repository
public class MemoDao {
	
	public int insertMemo(SqlSessionTemplate sqlSession, Memo m) { // 메모 작성
		return sqlSession.insert("memoMapper.insertMemo", m);
	}

	public int deleteMemo(SqlSessionTemplate sqlSession, int[] intNums) { // 메모 삭제
		int result = 0;
		
		for (int i = 0 ; i < intNums.length ; i++) {
			result = sqlSession.delete("memoMapper.deleteMemo", intNums[i]);
			if(result == 0) {
				break;
			}
		}
		
		return result;
	}

	public int updateMemo(SqlSessionTemplate sqlSession, Memo m) { // 메모 수정
		return sqlSession.update("memoMapper.updateMemo", m);
	}

	public ArrayList<Memo> selectMemoList(SqlSessionTemplate sqlSession, int memoWriter) { // 메모 전체 조회
		return (ArrayList)sqlSession.selectList("memoMapper.selectMemoList", memoWriter);
	}

	public Memo selectMemoDetail(SqlSessionTemplate sqlSession, int memoNo) { // 메모 상세 조회
		return sqlSession.selectOne("memoMapper.selectMemoDetail", memoNo);
	}
	
	public int widgetMemoNtoY(SqlSessionTemplate sqlSession, Memo m) { // 위젯 여부 변경
		int result1 = sqlSession.update("memoMapper.widgetMemoNtoY", m);
		int result2 = sqlSession.update("memoMapper.widgetMemoAlltoN", m);
		return result1 * result2;
	}
	
	public int widgetMemoAlltoN(SqlSessionTemplate sqlSession, int memoWriter) { // 위젯 여부 변경
		return sqlSession.update("memoMapper.widgetMemoAlltoN2", memoWriter);
	}
	
	public int updateDelete(SqlSessionTemplate sqlSession, int memoNo) { // 수정에서 삭제
		return sqlSession.delete("memoMapper.updateDelete", memoNo);
	}
	
	public Memo selectMemoWidget(SqlSessionTemplate sqlSession, int memoWriter) { // 위젯 불러오기
		return sqlSession.selectOne("memoMapper.selectMemoWidget", memoWriter);
	}
	
}
