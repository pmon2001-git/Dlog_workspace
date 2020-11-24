package com.kh.dlog.friend.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.friend.model.dao.FriendDao;
import com.kh.dlog.friend.model.vo.Friend;

@Service
public class FriendServiceImpl implements FriendService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private FriendDao fDao;

	@Override
	public int selectFriendListCount(int friendOwner) {
		return fDao.selectFriendListCount(sqlSession, friendOwner);
	}
	
	@Override
	public ArrayList<Friend> selectFriendList(int friendOwner, PageInfo pi) {
		return fDao.selectFriendList(sqlSession, friendOwner, pi);
	}

	@Override
	public int deleteFriend(Friend f) {
		return fDao.deleteFriend(sqlSession, f);
	}
	
}
