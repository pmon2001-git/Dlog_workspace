package com.kh.dlog.mainmenu.freenote.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;
import com.kh.dlog.mainmenu.freenote.model.vo.SearchCondition;

@Repository
public class FreenoteDao {

	// 프리노트
	public int selectListCount(SqlSessionTemplate sqlSession, SearchCondition sc) {
		return sqlSession.selectOne("freenoteMapper.selectListCount", sc);
	}
	
	public ArrayList<Freenote> selectList(SqlSessionTemplate sqlSession, SearchCondition sc, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("freenoteMapper.selectList", sc, rowBounds);
	}
	
	public ArrayList<String> selectCategory(SqlSessionTemplate sqlSession, int mno) {
		return (ArrayList)sqlSession.selectList("freenoteMapper.selectCategory", mno);
	}
	
	public int insertFreenote(SqlSessionTemplate sqlSession, Freenote fn) {
		return sqlSession.insert("freenoteMapper.insertFreenote", fn);
	}
	
	public int increaseCount(SqlSessionTemplate sqlSession, int fno) {
		return sqlSession.update("freenoteMapper.increaseCount", fno);
	}
	
	public Freenote selectFreenote(SqlSessionTemplate sqlSession, int fno) {
		return sqlSession.selectOne("freenoteMapper.selectFreenote", fno);
	}
	
	public int updateFreenote(SqlSessionTemplate sqlSession, Freenote fn) {
		return sqlSession.update("freenoteMapper.updateFreenote", fn);
	}
	
	public int deleteFreenote(SqlSessionTemplate sqlSession, int fno) {
		return sqlSession.update("freenoteMapper.deleteFreenote", fno);
	}
	
	
	// 커뮤니티
	public int selectCommListCount(SqlSessionTemplate sqlSession, String topicName) {
		return sqlSession.selectOne("freenoteMapper.selectCommListCount", topicName);
	}
	
	public ArrayList<Freenote> selectCommList(SqlSessionTemplate sqlSession, String topicName, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("freenoteMapper.selectCommList", topicName, rowBounds);
	}
	
	public int selectSearchListCount(SqlSessionTemplate sqlSession, SearchCondition sc) {
		return sqlSession.selectOne("freenoteMapper.selectSearchListCount", sc);
	}
	
	public ArrayList<Freenote> selectSearchList(SqlSessionTemplate sqlSession, SearchCondition sc, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("freenoteMapper.selectSearchList", sc, rowBounds);
	}
	
	
	
}
