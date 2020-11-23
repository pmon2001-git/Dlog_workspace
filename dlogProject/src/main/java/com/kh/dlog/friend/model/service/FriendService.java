package com.kh.dlog.friend.model.service;

import java.util.ArrayList;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.friend.model.vo.Friend;

public interface FriendService {

	int selectFriendListCount(int friendOwner);
	ArrayList<Friend> selectFriendList(int friendOwner, PageInfo pi);
	
}
