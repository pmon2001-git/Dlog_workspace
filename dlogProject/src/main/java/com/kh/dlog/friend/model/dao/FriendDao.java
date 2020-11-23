package com.kh.dlog.friend.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.friend.model.vo.Friend;

@Repository
public class FriendDao {
	
	public int selectFriendListCount(SqlSessionTemplate sqlSession, int friendOwner){
		return sqlSession.selectOne("friendMapper.selectFriendListCount", friendOwner);
	}
	
	public ArrayList<Friend> selectFriendList(SqlSessionTemplate sqlSession, int friendOwner, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("friendMapper.selectFriendList", friendOwner, rowBounds);
	}
	
}
