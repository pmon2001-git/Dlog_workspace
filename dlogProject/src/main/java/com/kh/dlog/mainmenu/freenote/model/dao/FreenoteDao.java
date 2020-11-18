package com.kh.dlog.mainmenu.freenote.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;

@Repository
public class FreenoteDao {

	public int selectListCount(SqlSessionTemplate sqlSession, int mNo) {
		return sqlSession.selectOne("freenoteMapper.selectListCount", mNo);
	}
	
	public ArrayList<Freenote> selectList(SqlSessionTemplate sqlSession, int mNo, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("freenoteMapper.selectList", mNo, rowBounds);
	}
}
