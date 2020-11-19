package com.kh.dlog.mainmenu.diary.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.diary.model.vo.Diary;

@Repository
public class DiaryDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("diaryMapper.selectListCount");
	}
	
	public ArrayList<Diary> selectList(SqlSessionTemplate sqlSession, PageInfo pi){
	
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("diaryMapper", null, rowBounds);
	}
	
}
